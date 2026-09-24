import type { CSSProperties } from 'react';

const itemTiles: Record<string, [number, number]> = {
  '铁桶': [15, 1],
  '书 猪皮装订': [58, 0],
  '书 触手皮装订': [58, 0],
  '橡木船': [26, 8],
  '橡木箱船': [27, 8],
  '奶桶': [36, 7],
  '附魔书': [27, 12],
  '不死图腾': [26, 11],
  '炼药台': [5, 1],
  '金剑': [36, 5], '金斧': [23, 5], '金镐': [32, 5],
  '金头盔': [27, 5], '金盔甲（胸甲）': [26, 5],
  '铜剑': [47, 3], '铜斧': [29, 3], '铜镐': [43, 3],
  '铜头盔': [35, 3], '铜盔甲（胸甲）': [32, 3],
  '铁剑': [20, 6], '铁斧': [3, 6], '铁镐': [16, 6],
  '铁头盔': [9, 6], '铁盔甲（胸甲）': [6, 6],
  '钻石剑': [22, 4], '钻石斧': [10, 4], '钻石镐': [18, 4],
  '钻石头盔': [13, 4], '钻石盔甲（胸甲）': [12, 4],
  '下界合金剑': [24, 8], '下界合金斧': [10, 8], '下界合金镐': [19, 8],
  '下界合金头盔': [13, 8], '下界合金盔甲（胸甲）': [12, 8],
  'Bucket': [15, 1],
  'Book (Pig Skin binding)': [58, 0],
  'Book (Tentacle Spots binding)': [58, 0],
  'Oak Boat': [26, 8],
  'Oak Chest Boat': [27, 8],
  'Milk Bucket': [36, 7],
  'Enchanted Book': [27, 12],
  'Totem of Undying': [26, 11],
  'Brewing Stand': [5, 1],
  'Golden Sword': [36, 5], 'Golden Axe': [23, 5], 'Golden Pickaxe': [32, 5],
  'Golden Helmet': [27, 5], 'Golden Armor (Chestplate)': [26, 5],
  'Copper Sword': [47, 3], 'Copper Axe': [29, 3], 'Copper Pickaxe': [43, 3],
  'Copper Helmet': [35, 3], 'Copper Armor (Chestplate)': [32, 3],
  'Iron Sword': [20, 6], 'Iron Axe': [3, 6], 'Iron Pickaxe': [16, 6],
  'Iron Helmet': [9, 6], 'Iron Armor (Chestplate)': [6, 6],
  'Diamond Sword': [22, 4], 'Diamond Axe': [10, 4], 'Diamond Pickaxe': [18, 4],
  'Diamond Helmet': [13, 4], 'Diamond Armor (Chestplate)': [12, 4],
  'Netherite Sword': [24, 8], 'Netherite Axe': [10, 8], 'Netherite Pickaxe': [19, 8],
  'Netherite Helmet': [13, 8], 'Netherite Armor (Chestplate)': [12, 8],
};

export function RecipeItem({ name }: { name: string }) {
  const tile = itemTiles[name];
  const ring = ['七咒之戒', '灵魂缝合', 'Ring of Seven Curses', 'Soul Stitching'].includes(name);
  if (!tile && !ring) return <>{name}</>;

  const style = tile ? {
    '--item-x': `${-tile[0] * 32}px`,
    '--item-y': `${-tile[1] * 32}px`,
  } as CSSProperties : undefined;

  return <span className="recipe-item">
    <span className={`recipe-icon${ring ? ' recipe-icon-ring' : ''}`} style={style} aria-hidden="true" />
    <span>{name}</span>
  </span>;
}
