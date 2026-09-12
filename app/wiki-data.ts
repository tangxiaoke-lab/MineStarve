import { parseChapter } from '../lib/chapter-content.js';
import catalog from './mods.json';

const documents = import.meta.glob('../content/**/*.md', {
  query: '?raw', import: 'default', eager: true,
}) as Record<string, string>;
const interfaces = import.meta.glob('../content/**/ui.json');
export type Chapter = ReturnType<typeof parseChapter>;
export const mods = catalog;
export const defaultMod = 'minestarve';
export function getMod(id: string) { return mods.find(mod => mod.id === id) || mods[0]; }
const collections: Record<string, Record<string, Chapter[]>> = {};
for (const mod of mods) {
  const sets: Record<string, Chapter[]> = { 'zh-CN': [] };
  const prefix = `../${mod.contentRoot}/`;
  for (const [path, source] of Object.entries(documents).sort(([a], [b]) => a.localeCompare(b))) {
    if (!path.startsWith(prefix)) continue;
    const relative = path.slice(prefix.length);
    const match = relative.match(/^translations\/([^/]+)\/[^/]+\.md$/);
    if (relative.includes('/') && !match) continue;
    const locale = match?.[1] || 'zh-CN';
    (sets[locale] ||= []).push(parseChapter(path, source));
  }
  for (const path of Object.keys(interfaces)) {
    if (!path.startsWith(prefix)) continue;
    const locale = path.slice(prefix.length).match(/^translations\/([^/]+)\/ui\.json$/)?.[1];
    if (locale) sets[locale] ||= [];
  }
  collections[mod.id] = sets;
}
export function getChapterSets(modId = defaultMod) { return collections[getMod(modId).id]; }
export const chapterSets = getChapterSets();
export const chapters = chapterSets['zh-CN'];
export function getLanguages(modId = defaultMod) { return ['zh-CN', 'en', ...Object.keys(getChapterSets(modId)).filter(code => code !== 'zh-CN' && code !== 'en').sort()]; }
export const languages = getLanguages();
export function localizedChapters(locale: string, modId = defaultMod) {
  const sets = getChapterSets(modId);
  return sets['zh-CN'].map(original => {
    const translated = sets[locale]?.find(chapter => chapter.id === original.id);
    const fallback = sets.en.find(chapter => chapter.id === original.id)!;
    return { ...(translated || fallback), sourceLocale: translated ? locale : 'en', translationMissing: !translated };
  });
}
