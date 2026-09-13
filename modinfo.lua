local chs = locale == "zh" or locale == "zhr"
local cht = locale == "zht"

-- 主配置及子配置在原有选项之后追加，子配置由主配置统一约束。
local hunger_options = {
    { "enable_mc_hunger", "更 MC 化的饱食度", "More Minecraft-like Hunger",
        "主开关。关闭后，下方全部子功能和角色补偿均不生效。",
        "Master switch. Disables all hunger sub-features and character compensation when off." },
    { "mc_hunger_regen", "  脱战饱食回血", "  Out-of-combat regeneration",
        "脱战3秒且饱食度至少80%时，每0.5秒用2饥饿值恢复1生命。旺达不回血，获得奔跑及消耗补偿。需要主开关。",
        "After 3 seconds out of combat at 80% hunger: 1 health per 0.5s costs 2 hunger. Wanda gains compensation instead. Requires master switch." },
    { "mc_hunger_sprint", "  饱食奔跑", "  Hunger-powered sprint",
        "按住奔跑键加速25%，旺达补偿时30%；每秒消耗0.5，低于20%停止。游戏内可改键，默认左Shift。需要主开关。",
        "Hold sprint for +25% speed (+30% with Wanda compensation), costing 0.5 hunger/s. Requires 20% hunger. Rebind in game; default Left Shift. Requires master switch." },
    { "mc_hunger_attack", "  攻击消耗", "  Attack hunger cost",
        "每次成功命中消耗0.33饥饿值；范围攻击只结算一次，宠物不算。需要主开关。",
        "Successful attacks cost 0.33 hunger. Area hits count once; pets are excluded. Requires master switch." },
    { "mc_hunger_work", "  劳动消耗", "  Work hunger cost",
        "有效挖掘、砍伐、采矿、采集及锤击每次消耗0.2饥饿值。需要主开关。",
        "Successful digging, chopping, mining, gathering and hammering cost 0.2 hunger per action. Requires master switch." },
    { "mc_hunger_skills", "  技能与角色饥饿规则", "  Skills and character hunger rules",
        "启用角色专属施法/制作消耗、自然饥饿加速和沃尔特攻击消耗加成。需要主开关。",
        "Enables character spell/crafting costs, natural hunger modifiers and Walter's attack surcharge. Requires master switch." },
    { "mc_hunger_debuff", "  生物饥饿效果", "  Monster hunger debuff",
        "僵尸命中施加10秒饥饿，每秒额外消耗1饥饿值，期间不回血。重复命中刷新时间，不叠加。需要主开关。",
        "Zombie hits inflict hunger for 10s: 1 extra hunger/s and no regeneration. Further hits refresh duration, not strength. Requires master switch." },
}

local hunger_options_zht =
{
    enable_mc_hunger =
    {
        "更 MC 化的飽食度",
        "主開關。關閉後，下方全部子功能和角色補償均不生效。",
    },
    mc_hunger_regen =
    {
        "  脫戰飽食回血",
        "脫戰 3 秒且飽食度至少 80% 時，每 0.5 秒用 2 飢餓值恢復 1 點生命。旺達不會回血，改為獲得奔跑及消耗補償。需要主開關。",
    },
    mc_hunger_sprint =
    {
        "  飽食奔跑",
        "按住奔跑鍵可加速 25%，旺達補償時為 30%；每秒消耗 0.5 飢餓值，低於 20% 時停止。可在遊戲內改鍵，預設為左 Shift。需要主開關。",
    },
    mc_hunger_attack =
    {
        "  攻擊消耗",
        "每次成功命中消耗 0.33 飢餓值；範圍攻擊只結算一次，寵物不計。需要主開關。",
    },
    mc_hunger_work =
    {
        "  勞動消耗",
        "有效挖掘、砍伐、採礦、採集及錘擊每次消耗 0.2 飢餓值。需要主開關。",
    },
    mc_hunger_skills =
    {
        "  技能與角色飢餓規則",
        "啟用角色專屬施法／製作消耗、自然飢餓加速和沃爾特攻擊消耗加成。需要主開關。",
    },
    mc_hunger_debuff =
    {
        "  生物飢餓效果",
        "殭屍命中會施加 10 秒飢餓，每秒額外消耗 1 點飢餓值，期間無法回血。重複命中會刷新時間，不會疊加。需要主開關。",
    },
}

local L = cht and
{
    name = "我的饑荒",
    description = [[
將「檢查自己」替換為 Minecraft 風格物品欄。

- 玩家主物品欄可設定為 45、30 或原版 15 格
- 背包欄、衣物欄和啟迪之冠欄可設定開關
- 新增飾品欄
- 可選擇啟用神秘遺物
- 新增無上限玩家經驗、普通書／附魔書和九類 Minecraft 附魔；靈子分解器支援隨機附魔及附魔書／裝備犧牲轉移，含三種不同書籍的書櫃提供增幅，製圖桌兼作砂輪
- 可單獨啟用或關閉 Minecraft 風格狀態欄；關閉時保留 DST 原版狀態欄
]],
    author = "唐小可",
    backpack_style =
    {
        label = "背包處理方式",
        hover = "選擇背包佔用的裝備欄，以及裝有物品的背包能否放入玩家物品欄。",
        minecraft = "MC 風格",
        minecraft_hover =
            "把家放在背包裡：新增獨立背包欄，並允許裝有物品的背包放入玩家物品欄。",
        dontstarve = "饑荒風格",
        dontstarve_hover = "新增一個獨立背包欄。",
        vanilla = "原汁原味",
        vanilla_hover = "不新增背包欄，背包仍佔用原版護甲欄。",
    },
    inventory_slots =
    {
        label = "物品欄格數",
        hover = "選擇玩家物品欄的總格數；原版物品欄為 15 格。",
        slots_45 = "45 格",
        slots_45_hover = "使用 45 格物品欄。",
        slots_30 = "30 格",
        slots_30_hover = "使用 30 格物品欄。",
        slots_15 = "原版 15 格",
        slots_15_hover = "不額外新增物品欄，使用原版 15 格。",
    },
    extra_equipment =
    {
        label = "額外裝備欄",
        hover = "控制衣物欄與啟迪之冠欄。",
        enabled = "全部啟用",
        enabled_hover = "新增衣物欄與啟迪之冠欄。",
        disabled = "關閉",
        disabled_hover = "衣物和啟迪之冠恢復原版裝備欄佔用邏輯。",
    },
    mysterious_relics =
    {
        label = "啟用神秘遺物",
        hover = "獲得更多飾品，以及一點小小的負面效果。",
        enabled = "啟用",
        enabled_hover = "啟用更多飾品，並獲得七咒之戒。",
        disabled = "關閉",
        disabled_hover = "不啟用相關效果。",
    },
    minecraft_monster_spawning =
    {
        label = "MC 怪物生成",
        hover = "控制苦力怕、骷髏和殭屍在地表與地穴的自然生成。",
        none = "無",
        none_hover = "不自然生成 MC 怪物。",
        default = "預設",
        default_hover = "保留每日上限和存在數量上限。",
        abundant = "大量",
        abundant_hover = "不設每日上限，存在數量達上限後停止補充；地穴的存在數量上限為地表的兩倍。",
    },
    hidden_curse =
    {
        label = "隱藏詛咒",
        hover = "控制擊退距離增加與敵對生物無視牆體尋路效果。",
        enabled = "啟用",
        enabled_hover = "還不錯。",
        disabled = "關閉",
        disabled_hover = "膽小鬼。",
    },
    hud_skin =
    {
        label = "完整 Minecraft HUD 換膚的首次預設值",
        hover =
            "僅用於首次建立各玩家的本地 HUD 設定；之後請在 MC 物品欄右上角的設定面板中修改。",
        enabled = "是",
        enabled_hover = "首次預設啟用完整 Minecraft HUD 換膚。",
        disabled = "否",
        disabled_hover = "保留原版 HUD 外觀，仍啟用擴充物品欄和 MC 審視物品欄。",
    },
    functional_medal =
    {
        label = "隱藏能力勳章欄",
        hover = "控制能力勳章欄是否從原版物品欄隱藏。",
        enabled = "是",
        enabled_hover = "只在 MC 物品欄中顯示。",
        disabled = "否",
        disabled_hover = "在原版物品欄和 MC 物品欄中都顯示。",
    },
}
or chs and
{
    name = "我的饥荒",
    description = [[
将“检查自己”替换为 Minecraft 风格物品栏。

- 玩家主物品栏可配置为 45、30 或原版 15 格
- 背包栏、衣服栏和启迪之冠栏可配置开关
- 新增饰品栏
- 可选启用神秘遗物
- 新增无上限玩家经验、普通书/附魔书和九类 Minecraft 附魔；灵子分解器支持随机附魔及附魔书/装备牺牲转移，含三种不同书籍的书架提供增幅，制图桌兼作砂轮
- 可单独启用或关闭 Minecraft 风格状态栏；关闭时保留 DST 原版状态栏
]],
    author = "唐小可",
    backpack_style =
    {
        label = "背包处理方式",
        hover = "选择背包占用的装备栏，以及装着物品的背包能否收进玩家物品栏。",
        minecraft = "MC 风格",
        minecraft_hover =
            "把家放在背包里：添加独立背包栏，并允许装着物品的背包放入玩家物品栏。",
        dontstarve = "饥荒风格",
        dontstarve_hover = "添加一个独立背包栏。",
        vanilla = "原汁原味",
        vanilla_hover = "不添加背包栏，背包仍然占用原版护甲栏。",
    },
    inventory_slots =
    {
        label = "物品栏格数",
        hover = "选择玩家物品栏的总格数；原版物品栏为 15 格。",
        slots_45 = "45 格",
        slots_45_hover = "使用 45 格物品栏。",
        slots_30 = "30 格",
        slots_30_hover = "使用 30 格物品栏。",
        slots_15 = "原版 15 格",
        slots_15_hover = "不额外添加物品栏，使用原版 15 格。",
    },
    extra_equipment =
    {
        label = "额外装备栏",
        hover = "控制衣服栏与启迪之冠栏。",
        enabled = "全部启用",
        enabled_hover = "添加衣服栏与启迪之冠栏。",
        disabled = "关闭",
        disabled_hover = "衣服和启迪之冠恢复原版装备栏占用逻辑。",
    },
    mysterious_relics =
    {
        label = "启用神秘遗物",
        hover = "获得更多饰品，以及一点小小的负面效果。",
        enabled = "启用",
        enabled_hover = "启用更多饰品，并获得七咒之戒。",
        disabled = "关闭",
        disabled_hover = "不启用相关效果。",
    },
    minecraft_monster_spawning =
    {
        label = "MC怪物生成",
        hover = "控制苦力怕、骷髅和僵尸在地表与地穴的自然生成。",
        none = "无",
        none_hover = "不自然生成MC怪物。",
        default = "默认",
        default_hover = "保留每日上限和存在数量上限。",
        abundant = "大量",
        abundant_hover = "不设置每日上限，存在数量达到上限后停止补充；地穴的存在数量上限为地表的两倍。",
    },
    hidden_curse =
    {
        label = "隐藏诅咒",
        hover = "控制击退距离增加与敌对生物无视墙体寻路效果。",
        enabled = "启用",
        enabled_hover = "还不错。",
        disabled = "关闭",
        disabled_hover = "胆小鬼。",
    },
    hud_skin =
    {
        label = "完整 Minecraft HUD 换肤的首次默认值",
        hover =
            "仅用于首次生成各玩家的本地 HUD 设置；之后请在 MC 物品栏右上角的设置面板中修改。",
        enabled = "是",
        enabled_hover = "首次默认启用完整 Minecraft HUD 换肤。",
        disabled = "否",
        disabled_hover = "保留原版 HUD 外观，仍启用扩展物品栏和 MC 审视物品栏。",
    },
    functional_medal =
    {
        label = "隐藏能力勋章栏",
        hover = "控制能力勋章栏是否从原版物品栏隐藏。",
        enabled = "是",
        enabled_hover = "只在 MC 物品栏中展示。",
        disabled = "否",
        disabled_hover = "在原版物品栏和 MC 物品栏中都展示。",
    },
}
or
{
    name = "Minecraft Inventory HUD",
    description = [[
Replaces Inspect Self with a Minecraft-style inventory screen.

- Configure the main inventory to 45, 30, or the vanilla 15 slots
- Toggle backpack, clothing, and Enlightened Crown slots
- Adds accessory slots
- Optionally enables Enigmatic Legacy
- Adds uncapped player XP, Books/Enchanted Books, and nine Minecraft enchantments; the Prestihatitator supports random enchanting and sacrifice transfers, Bookcases with three different book types provide power, and Cartographer's Desks serve as grindstones
- Independently enable or disable the Minecraft-style status bar; disabling it preserves the original DST status bar
]],
    author = "Tang XiaoKe",
    backpack_style =
    {
        label = "Backpack Handling",
        hover =
            "Choose the backpack equipment slot and whether filled backpacks may enter the player's inventory.",
        minecraft = "Minecraft Style",
        minecraft_hover =
            "Carry your home with you: add a dedicated backpack slot and allow filled backpacks in the inventory.",
        dontstarve = "Don't Starve Style",
        dontstarve_hover = "Add a dedicated backpack slot.",
        vanilla = "Vanilla",
        vanilla_hover =
            "Do not add a backpack slot; backpacks continue to occupy the vanilla body slot.",
    },
    inventory_slots =
    {
        label = "Inventory Size",
        hover = "Choose the total number of player inventory slots; vanilla uses 15.",
        slots_45 = "45 Slots",
        slots_45_hover = "Use a 45-slot inventory.",
        slots_30 = "30 Slots",
        slots_30_hover = "Use a 30-slot inventory.",
        slots_15 = "Vanilla 15",
        slots_15_hover = "Add no extra slots and use the vanilla 15-slot inventory.",
    },
    extra_equipment =
    {
        label = "Extra Equipment Slots",
        hover = "Control the clothing and Enlightened Crown slots.",
        enabled = "Enable All",
        enabled_hover = "Add clothing and Enlightened Crown slots.",
        disabled = "Disabled",
        disabled_hover =
            "Clothing and the Enlightened Crown return to their vanilla equipment slots.",
    },
    mysterious_relics =
    {
        label = "Enigmatic Legacy",
        hover = "Gain Enigmatic Legacy accessories, along with a few unfortunate side effects.",
        enabled = "Enabled",
        enabled_hover = "Enable additional accessories and grant the Ring of Seven Curses.",
        disabled = "Disabled",
        disabled_hover = "Disable the related content and effects.",
    },
    minecraft_monster_spawning =
    {
        label = "MC Monster Spawning",
        hover = "Control natural Creeper, Skeleton, and Zombie spawning on the surface and in caves.",
        none = "None",
        none_hover = "Minecraft monsters will not spawn naturally.",
        default = "Default",
        default_hover = "Use the current spawning rules.",
        abundant = "Abundant",
        abundant_hover = "No daily limit; stop replenishing at the living population cap. Cave population caps are twice the surface caps.",
    },
    hidden_curse =
    {
        label = "Hidden Curse",
        hover =
            "Control the increased knockback distance and hostile creatures ignoring walls while pathfinding.",
        enabled = "Enabled",
        enabled_hover = "Not bad.",
        disabled = "Disabled",
        disabled_hover = "Coward.",
    },
    hud_skin =
    {
        label = "Initial Full Minecraft HUD Skin Default",
        hover =
            "Used only when creating each player's local HUD settings for the first time; change it later from the settings panel in the top-right of the Minecraft inventory.",
        enabled = "Yes",
        enabled_hover = "Initially enable the full Minecraft HUD skin.",
        disabled = "No",
        disabled_hover =
            "Keep the vanilla HUD appearance while retaining the expanded and Minecraft inventory screens.",
    },
    functional_medal =
    {
        label = "Hide Functional Medal Slot",
        hover = "Choose whether Functional Medal's slot is hidden from the vanilla inventory bar.",
        enabled = "Yes",
        enabled_hover = "Show it only in the Minecraft inventory screen.",
        disabled = "No",
        disabled_hover = "Show it in both the vanilla and Minecraft inventory screens.",
    },
}

name = L.name
description = L.description
author = L.author
version = "1.4.4"

api_version = 10
dst_compatible = true
all_clients_require_mod = true
client_only_mod = false
server_only_mod = false

priority = 100000

server_filter_tags =
{
    "Minecraft","Minestarve","我的饥荒",
}

icon_atlas = "modicon.xml" --mod图标
icon = "modicon.tex"

configuration_options =
{
    {
        name = "backpack_style",
        label = L.backpack_style.label,
        hover = L.backpack_style.hover,
        options =
        {
            {
                description = L.backpack_style.minecraft,
                data = "minecraft",
                hover = L.backpack_style.minecraft_hover,
            },
            {
                description = L.backpack_style.dontstarve,
                data = "dontstarve",
                hover = L.backpack_style.dontstarve_hover,
            },
            {
                description = L.backpack_style.vanilla,
                data = "vanilla",
                hover = L.backpack_style.vanilla_hover,
            },
        },
        default = "minecraft",
    },
    {
        name = "inventory_slot_count",
        label = L.inventory_slots.label,
        hover = L.inventory_slots.hover,
        options =
        {
            {
                description = L.inventory_slots.slots_45,
                data = 45,
                hover = L.inventory_slots.slots_45_hover,
            },
            {
                description = L.inventory_slots.slots_30,
                data = 30,
                hover = L.inventory_slots.slots_30_hover,
            },
            {
                description = L.inventory_slots.slots_15,
                data = 15,
                hover = L.inventory_slots.slots_15_hover,
            },
        },
        default = 45,
    },
    {
        name = "enable_extra_equipment_slots",
        label = L.extra_equipment.label,
        hover = L.extra_equipment.hover,
        options =
        {
            {
                description = L.extra_equipment.enabled,
                data = true,
                hover = L.extra_equipment.enabled_hover,
            },
            {
                description = L.extra_equipment.disabled,
                data = false,
                hover = L.extra_equipment.disabled_hover,
            },
        },
        default = true,
    },
    {
        name = "enable_mysterious_relics",
        label = L.mysterious_relics.label,
        hover = L.mysterious_relics.hover,
        options =
        {
            {
                description = L.mysterious_relics.enabled,
                data = true,
                hover = L.mysterious_relics.enabled_hover,
            },
            {
                description = L.mysterious_relics.disabled,
                data = false,
                hover = L.mysterious_relics.disabled_hover,
            },
        },
        default = false,
    },
    {
        name = "enable_minecraft_monster_spawning",
        label = L.minecraft_monster_spawning.label,
        hover = L.minecraft_monster_spawning.hover,
        options =
        {
            {
                description = L.minecraft_monster_spawning.none,
                data = false,
                hover = L.minecraft_monster_spawning.none_hover,
            },
            {
                description = L.minecraft_monster_spawning.default,
                data = true,
                hover = L.minecraft_monster_spawning.default_hover,
            },
            {
                description = L.minecraft_monster_spawning.abundant,
                data = "abundant",
                hover = L.minecraft_monster_spawning.abundant_hover,
            },
        },
        default = true,
    },
    {
        name = "enable_seven_curses_hidden_curse",
        label = L.hidden_curse.label,
        hover = L.hidden_curse.hover,
        options =
        {
            {
                description = L.hidden_curse.enabled,
                data = true,
                hover = L.hidden_curse.enabled_hover,
            },
            {
                description = L.hidden_curse.disabled,
                data = false,
                hover = L.hidden_curse.disabled_hover,
            },
        },
        default = true,
    },
    {
        name = "enable_minecraft_hud_skin",
        label = L.hud_skin.label,
        hover = L.hud_skin.hover,
        options =
        {
            {
                description = L.hud_skin.enabled,
                data = true,
                hover = L.hud_skin.enabled_hover,
            },
            {
                description = L.hud_skin.disabled,
                data = false,
                hover = L.hud_skin.disabled_hover,
            },
        },
        default = true,
    },
    {
        name = "hide_functional_medal_hud_slot",
        label = L.functional_medal.label,
        hover = L.functional_medal.hover,
        options =
        {
            {
                description = L.functional_medal.enabled,
                data = true,
                hover = L.functional_medal.enabled_hover,
            },
            {
                description = L.functional_medal.disabled,
                data = false,
                hover = L.functional_medal.disabled_hover,
            },
        },
        default = true,
    },
}

-- 单个空白选项由原版配置界面显示为纯文本分组标题。
configuration_options[#configuration_options + 1] = {
    name = "mc_hunger_section",
    label = cht and "Minecraft風格飢餓度" or (chs and "Minecraft风格饥饿度" or "Minecraft-style Hunger"),
    options = { { description = "", data = 0 } },
    default = 0,
}

-- modinfo 的受限环境不提供 ipairs；数值循环不依赖标准库。
for index = 1, #hunger_options do
    local option = hunger_options[index]
    local zht_option = hunger_options_zht[option[1]]
    configuration_options[#configuration_options + 1] = {
        name = option[1],
        label = cht and zht_option[1] or (chs and option[2] or option[3]),
        hover = cht and zht_option[2] or (chs and option[4] or option[5]),
        options = {
            { description = cht and "開啟" or (chs and "开启" or "Enabled"), data = true },
            { description = cht and "關閉" or (chs and "关闭" or "Disabled"), data = false },
        },
        default = true,
    }
end
