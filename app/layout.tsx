import type { Metadata } from 'next';
import './globals.css';
export const metadata: Metadata = {
  title: '我的饥荒 模组 Wiki',
  icons: { icon: '/items/book.png' },
  description: '我的饥荒 1.5.1 玩家指南：装备、采矿、药水与幽暗之域。 MineStarve 1.5.1 guide: equipment, mining, potions and the Deep Dark.',
};
export default function RootLayout({children}: Readonly<{children: React.ReactNode}>) {
  return <html lang="zh-CN"><body>{children}</body></html>;
}

