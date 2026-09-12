import en from './locales/en.json';
import zh from './locales/zh-CN.json';
import { getChapterSets, getLanguages, getMod, defaultMod } from './wiki-data';

const interfaces = import.meta.glob('../content/**/ui.json', { import: 'default', eager: true }) as Record<string, Partial<typeof en>>;
export type TextKey = keyof typeof en;
export function interfaceText(locale: string, modId = defaultMod) {
  const mod = getMod(modId);
  const language = locale.toLowerCase().startsWith('zh') ? 'zh' : 'en';
  return { ...(language === 'zh' ? zh : en), brand: mod.name[language], intro: mod.intro[language], author: mod.author[language], updated: mod.updated[language], ...interfaces[`../${mod.contentRoot}/translations/${locale}/ui.json`] };
}
export function languageName(locale: string) {
  if (locale === 'zh-CN') return '简体中文';
  if (locale === 'en') return 'English';
  return new Intl.DisplayNames([locale], { type: 'language' }).of(locale) || locale;
}
export function initialMod() { return getMod(new URL(window.location.href).searchParams.get('mod') || defaultMod).id; }
export function initialLanguage() {
  const languages = getLanguages(initialMod());
  const requested = new URL(window.location.href).searchParams.get('lang');
  let saved: string | null = null;
  try { saved = localStorage.getItem('minestarve-language'); } catch { /* Storage is optional. */ }
  const desired = requested || saved || navigator.language;
  if (languages.includes(desired)) return desired;
  if (desired.toLowerCase().startsWith('zh')) return 'zh-CN';
  return languages.find(locale => locale.split('-')[0] === desired.split('-')[0]) || 'en';
}
export function canonicalLanguage(value: string) {
  try {
    if (!/^[A-Za-z]{2,3}(?:-[A-Za-z0-9]{2,8})*$/.test(value.trim())) return '';
    const code = Intl.getCanonicalLocales(value.trim())[0];
    return code === 'zh' ? 'zh-CN' : code;
  } catch { return ''; }
}
export const repository = 'https://github.com/tangxiaoke-lab/MineStarve';
export function translationUrl(locale: string, filename: string, modId = defaultMod) {
  const existing = getChapterSets(modId)[locale]?.find(chapter => chapter.filename === filename);
  const root = getMod(modId).contentRoot;
  const path = locale === 'zh-CN' ? `${root}/${filename}` : `${root}/translations/${locale}/${filename}`;
  if (existing) return `${repository}/edit/main/${path}`;
  const params = new URLSearchParams({ filename: path, value: '# TRANSLATION_DRAFT\n\nTRANSLATION_DRAFT\n\nTRANSLATION_DRAFT\n' });
  return `${repository}/new/main?${params}`;
}
