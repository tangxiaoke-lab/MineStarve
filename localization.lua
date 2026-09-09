local TRANSLATIONS =
{
    zh =
    {
        ROWBOAT =
        {
            NAMES = { MC_OAK_BOAT = "橡木船", MC_OAK_CHEST_BOAT = "橡木箱船" },
            RECIPE_DESC =
            {
                MC_OAK_BOAT = "双桨橡木船。",
                MC_OAK_CHEST_BOAT = "带上全部家当。",
            },
            DESCRIBE =
            {
                MC_OAK_BOAT = "它真的牢固么？",
                MC_OAK_CHEST_BOAT = "排水量很大。",
            },
            ITEM_DESCRIBE = "把它放在岸边的海面上，再跳上船。",
            ACTION = "划船",
            CHEST_TOGGLE = "点击开关储物箱",
        },
        HOSTILES =
        {
            NAMES = { MC_SKELETON = "骷髅", MC_ZOMBIE = "僵尸" },
            DESCRIBE =
            {
                MC_SKELETON = "小心它的弓箭。",
                MC_ZOMBIE = "别让它靠近。",
            },
        },
        CREEPER =
        {
            NAME = "苦力怕",
            DESCRIBE = "它停下来时就该跑了！",
        },
        ENDER_DRAGON =
        {
            NAMES =
            {
                ENDER_DRAGON = "末影龙",
                MC_ENDER_HAND_LEFT = "虚空之手·左翼（1）",
                MC_ENDER_HAND_RIGHT = "虚空之手·右翼（2）",
                MC_ENDER_HAND_HEAD = "虚空之手·头部（3）",
                MC_ENDER_SOULBURN = "魂灼",
                MC_ENDER_PROJECTILE = "末影龙吐息弹",
            },
            DESCRIBE =
            {
                ENDER_DRAGON = "终极",
                MC_ENDER_HAND_LEFT = "第一道束缚。",
                MC_ENDER_HAND_RIGHT = "第二道束缚。",
                MC_ENDER_HAND_HEAD = "最后一道束缚。。",
                MC_ENDER_SOULBURN = "持续10秒，每秒损失最大生命值的2%；每次因此损失的血量5分钟内无法恢复。",
                MC_ENDER_PROJECTILE = "80点物理伤害，外加命中时当前生命值10%的位面伤害。",
            },
            SOUL_WARNING = "我被灼伤了！",
        },
        UI =
        {
            INVENTORY = "物品栏",
            BACKPACK = "背包",
            SPELLSTONE = "术石",
            RING = "戒指",
            RELIC = "遗物",
            AMULET = "护符",
            MEDAL = "勋章",
            EXTRA_EQUIPMENT = "额外装备",
            EXTRA_EQUIPMENT_SLOT = "额外装备槽 %d",
            EXTRA_EQUIPMENT_PREVIOUS = "上页",
            EXTRA_EQUIPMENT_NEXT = "下页",
            EXTRA_EQUIPMENT_PAGE = "%d / %d",
            SCRAPBOOK = "图鉴",
            COOKBOOK = "食谱",
            SKILL_TREE = "技能树",
            ENDER_CHEST_TOOLTIP = "末影箱（物品栏键关闭）",
            STATUS =
            {
                EXPERIENCE_LEVEL_FMT = "玩家等级 %d",
                EXPERIENCE_FORMAT =
                    "玩家等级：%d\n当前经验：%d/%d",
                EXPERIENCE_PROGRESS_FMT = "%d/%d",
                HEALTH_FORMAT = "生命：%d/%d",
                HUNGER_FORMAT = "饥饿：%d/%d",
                MOUNT_HEALTH_FORMAT = "坐骑生命：%d/%d",
                ARMOR_FORMAT = "护甲耐久：%d%%",
                ABSORPTION_FORMAT = "伤害吸收：%d/%d",
                EXPERIENCE_TOOLTIP_FMT =
                    "玩家等级：%d\n当前经验：%d/%d",
                HEALTH_TOOLTIP_FMT = "生命：%d/%d",
                HUNGER_TOOLTIP_FMT = "饥饿：%d/%d",
                MOUNT_HEALTH_TOOLTIP_FMT = "坐骑生命：%d/%d",
                ARMOR_TOOLTIP_FMT = "护甲耐久：%d%%",
                ABSORPTION_TOOLTIP_FMT = "伤害吸收：%d/%d",
            },
            HUD_SETTINGS =
            {
                TITLE = "HUD 设置",
                BUTTON_TOOLTIP = "状态栏与 HUD 设置",
                APPLY = "应用",
                CANCEL = "取消",
                STATUS_ENABLED = "使用 Minecraft 状态栏",
                STATUS_ENABLED_TOOLTIP =
                    "启用物品栏上方的 Minecraft 十格状态栏；关闭时恢复原版状态栏。",
                HEALTH_ENABLED = "显示 Minecraft 生命值",
                HEALTH_ENABLED_TOOLTIP =
                    "在 Minecraft 状态栏中显示生命值；关闭后保留原版生命徽章。",
                HUNGER_ENABLED = "显示 Minecraft 饥饿值",
                HUNGER_ENABLED_TOOLTIP =
                    "在 Minecraft 状态栏中显示饥饿值；关闭后保留原版饥饿徽章。",
                ARMOR_ENABLED = "显示护甲值",
                ARMOR_ENABLED_TOOLTIP =
                    "显示已装备头部与身体护甲的耐久度。",
                PET_HEALTH_ENABLED = "显示宠物／坐骑血量",
                PET_HEALTH_ENABLED_TOOLTIP =
                    "显示原版宠物血量徽章和 Minecraft 坐骑生命条。",
                SANITY_CENTERED = "理智值居中",
                SANITY_CENTERED_TOOLTIP =
                    "将原版理智徽章移到 Minecraft 状态栏中央。",
                SHOW_VANILLA_STATUS = "同时显示原版状态栏",
                SHOW_VANILLA_STATUS_TOOLTIP =
                    "保留原版生命与饥饿徽章，同时显示已启用的 Minecraft 状态条。",
                FULL_HUD_SKIN_ENABLED = "完整 Minecraft HUD 换肤",
                FULL_HUD_SKIN_ENABLED_TOOLTIP =
                    "替换原版 HUD、制作栏、容器、按钮和状态栏贴图。",
                FULL_HUD_SKIN_UNAVAILABLE_TOOLTIP =
                    "检测到独立 Minecraft HUD 模组正在接管换肤，因此此开关不可用。",
            },
            ENCHANTING =
            {
                TITLE = "附魔台",
                OPEN = "附魔",
                ITEM_SLOT = "待附魔物品",
                TARGET_SLOT = "待附魔物品",
                NITRE_SLOT = "硝石 / 牺牲物",
                CATALYST_SLOT = "硝石、附魔书或同类附魔装备",
                APPLY = "附魔",
                BUTTON = "附魔",
                LEVEL_FMT = "需要等级：%d",
                REQUIRED_LEVEL_FORMAT = "需要等级：%d",
                NITRE_FMT = "硝石消耗：%d",
                NITRE_COST_FORMAT = "硝石消耗：%d",
                CURRENT_LEVEL_FMT = "玩家等级：%d",
                CAPACITY_FMT = "附魔能力：%d/30",
                POWER_FMT = "附魔上限：%d/%d · 有效书架：%d/%d",
                POWER_FORMAT = "附魔上限：%d/%d · 有效书架：%d/%d",
                REQUIRED_FMT = "需要 %d 级",
                COST_FMT = "消耗 %d 级 · %d 个硝石",
                TRANSFER_COST_FMT = "转移消耗 %d 级",
                TRANSFER_HELP_FMT = "转移附魔：将消耗 %d 个实际等级。",
                TRANSFER_BUTTON = "转移附魔",
                OFFER_FMT = "%s %s · 需要 %d 级",
                OFFER_PREVIEW_FMT = "%s %s ……",
                OFFER_LOCKED = "不可用",
                UNKNOWN_OFFER = "神秘文字",
                GLYPH_ALPHABET = "abcdefghijklmnopqrstuvwxyz",
                EMPTY_HINT = "放入装备或普通书；催化格可放硝石、附魔书或同类附魔装备。",
                HELP = "每个书架须有至少三种不同书籍才有效；12 个有效书架达到 30 级。",
                READY_FMT = "%s %s · 需要 %d 级；消耗 %d 级与 %d 个硝石",
                REASONS =
                {
                    INVALID_TARGET = "请放入可附魔的装备或普通书。",
                    INSUFFICIENT_NITRE = "硝石数量不足。",
                    INSUFFICIENT_LEVEL = "玩家等级不足。",
                    INSUFFICIENT_XP = "可消费的实际等级不足。",
                    NO_POWER = "灵子分解器附近需要有效的书架。",
                    INVALID_OFFER = "这档附魔当前不可用。",
                    STALE_OFFER = "附魔选项已变化，请重新选择。",
                    CONFLICT = "这档附魔与装备上已有的附魔冲突。",
                    ALREADY_AT_LEVEL = "装备上的附魔已达到该等级。",
                    INVALID_CATALYST = "催化剂槽必须放入硝石。",
                    INVALID_SACRIFICE = "牺牲物必须是附魔书或同类附魔装备。",
                    NO_TRANSFERABLE_ENCHANTMENT = "牺牲物没有可转移的附魔。",
                    INELIGIBLE_TARGET = "牺牲物上的附魔不适用于目标物品。",
                    PROTECTED_ITEM = "灵魂绑定或受保护的物品不能祛魔。",
                    NOT_ENCHANTED = "这件物品没有普通附魔。",
                },
            },
            GRINDSTONE =
            {
                TITLE = "砂轮",
                OPEN = "使用砂轮",
                ITEM_SLOT = "待祛魔物品",
                TARGET_SLOT = "待祛魔物品",
                FIRST_INPUT_SLOT = "输入一",
                SECOND_INPUT_SLOT = "输入二",
                OUTPUT_SLOT = "结果",
                DISENCHANT = "祛魔",
                BUTTON = "处理",
                BUTTON_TOOLTIP = "处理输入物品",
                EMPTY_HINT = "放入附魔物品，或两件同类耐久物品。",
                HELP = "祛除普通附魔；两件同类物品会合并耐久并额外修复 5%。",
                REFUND_FMT = "预计返还：%d 点附魔经验",
                REFUND_FORMAT = "预计返还：%d 点附魔经验",
                REASONS =
                {
                    INVALID_TARGET = "请放入附魔物品，或两件同类耐久物品。",
                    PROTECTED_ITEM = "灵魂绑定或受保护的物品不能祛魔。",
                    NOT_ENCHANTED = "这件物品没有普通附魔。",
                    ONLY_CURSES_REMAIN = "这里只剩下砂轮无法移除的诅咒。",
                    OUTPUT_OCCUPIED = "请先取走结果格中的物品。",
                    INVALID_REPAIR_PAIR = "两件输入必须是同一种可损耗物品。",
                },
            },
        },
        ACTIONS =
        {
            MILK = "挤奶",
        },
        NAMES =
        {
            BUCKET = "铁桶",
            MILK_BUCKET = "奶桶",
            TOTEM_OF_UNDYING = "不死图腾",
            RING_SEVEN_CURSES = "七咒之戒",
            SOUL_REPAIR = "灵魂缝合",
            MAGICIAN_CHEST = "麦斯威尔的魔术箱",
            BOOK = "书",
            ENCHANTED_BOOK = "附魔书",
            ENCHANTED_BOOK_FMT = "附魔书：%s %s",
        },
        DESCRIBE =
        {
            BUCKET = "一个结实的铁桶。",
            MILK_BUCKET =
                "一桶能洗去所有限时效果的牛奶，喝完或变质后会留下铁桶。",
            TOTEM_OF_UNDYING =
                "装备在遗物栏时，它会替佩戴者承受一次致命伤害，并在触发后提供1秒无敌。",
            RING_SEVEN_CURSES = "七重祝福与七重诅咒，都已刻进了灵魂。",
            SOUL_REPAIR = "它只在制作完成的一瞬间存在。",
            BOOK = "一本等待记录魔法的普通书。",
            ENCHANTED_BOOK = "书页中封存着一项或多项附魔。",
        },
        RECIPE_DESC =
        {
            BUCKET = "用来盛装新鲜牛奶。",
            SOUL_REPAIR = "修复一层灵魂破裂。",
            MAGICIAN_CHEST = "与末影仓共享内容的暗影魔术箱。",
            BOOK = "用猪皮或触手皮装订一本书。",
            ENCHANTED_BOOK = "保存可转移到合适物品上的附魔。",
        },
        ACTIONFAIL =
        {
            NO_SOUL_FRACTURE = "我的灵魂目前没有可以修复的裂痕。",
        },
        MESSAGES =
        {
            SOUL_REPAIRED = "灵魂裂痕被修复了一层。",
            ADMIN_RELEASED = "七咒之戒的束缚被管理员解除。",
            ENCHANT_SUCCESS = "附魔完成。",
            ENCHANT_TRANSFER_SUCCESS = "牺牲物上的附魔已转移。",
            DISENCHANT_SUCCESS_FMT = "祛魔完成，返还了 %d 点附魔经验。",
            ENCHANT_EMPTY_ITEM = "请先放入可附魔的装备或普通书。",
            ENCHANT_EMPTY_NITRE = "请放入足够的硝石。",
            ENCHANT_INVALID_ITEM = "这件物品不能承载该附魔。",
            ENCHANT_INVALID_OFFER = "这档附魔当前不可用。",
            ENCHANT_STALE_OFFER = "附魔选项已经变化，请重新选择。",
            ENCHANT_CONFLICT = "这项附魔与装备上已有的附魔冲突。",
            ENCHANT_NO_UPGRADE = "这档附魔无法继续提升现有附魔。",
            ENCHANT_INVALID_SACRIFICE = "牺牲物必须是附魔书或同类附魔装备。",
            ENCHANT_NO_TRANSFER = "牺牲物没有可转移的附魔。",
            ENCHANT_INSUFFICIENT_LEVEL = "你的玩家等级未达到这档附魔的门槛。",
            ENCHANT_INSUFFICIENT_XP = "你的实际等级不足以支付本档消耗。",
            ENCHANT_STATION_UNAVAILABLE = "附魔台当前无法使用。",
            ENCHANT_STATION_BUSY = "这座灵子分解器正被其他玩家使用。",
            ENCHANT_TOO_FAR = "你离附魔台太远了。",
            DISENCHANT_EMPTY_ITEM = "请放入附魔物品，或两件同类耐久物品。",
            DISENCHANT_NONE = "这件物品没有可以移除的普通附魔。",
            DISENCHANT_FORBIDDEN = "灵魂绑定或受保护的物品不能祛魔。",
            DISENCHANT_OUTPUT_OCCUPIED = "请先取走砂轮结果格中的物品。",
            DISENCHANT_INVALID_PAIR = "砂轮的两件输入必须是同一种可损耗物品。",
            DISENCHANT_STATION_UNAVAILABLE = "砂轮当前无法使用。",
            DISENCHANT_STATION_BUSY = "这座砂轮正被其他玩家使用。",
            DISENCHANT_TOO_FAR = "你离砂轮太远了。",
            EXPERIENCE_GAIN_FMT = "获得 %d 点经验。",
        },
        TOOLTIP =
        {
            ENCHANTMENT_LINE_FMT = "%s %s",
            ENCHANTED_BOOK_NAME_FMT = "附魔书：%s %s",
            UNKNOWN_ENCHANTMENT = "未知附魔",
        },
        ENCHANTMENTS =
        {
            SHARPNESS =
            {
                NAME = "锋利",
                DESC_FMT = "普通物理伤害提高 %d%%。",
            },
            SMITE =
            {
                NAME = "驱邪",
                DESC_FMT =
                    "对暗影、梦魇、幽灵和亡灵目标的普通物理伤害提高 %d%%。",
            },
            LOOTING =
            {
                NAME = "抢夺",
                DESC_FMT = "%d%% 概率额外获得一个普通掉落。",
            },
            PROTECTION =
            {
                NAME = "保护",
                DESC_FMT = "受到的最终战斗伤害降低 %d%%。",
            },
            FIRE_PROTECTION =
            {
                NAME = "火焰保护",
                DESC_FMT = "燃烧持续时间缩短 %d%%。",
            },
            UNBREAKING =
            {
                NAME = "耐久",
                DESC_FMT = "%d%% 概率不消耗装备耐久。",
            },
            EFFICIENCY =
            {
                NAME = "效率",
                DESC_FMT = "工具工作效率提高 %d%%。",
            },
            BINDING_CURSE =
            {
                NAME = "绑定诅咒",
                DESC_FMT =
                    "装备后无法主动取下且死亡不掉落；耐久耗尽后解除，无耐久物品可由酿夜帽昏睡取下。",
            },
            VANISHING_CURSE =
            {
                NAME = "消失诅咒",
                DESC_FMT = "携带者死亡时该物品会消失。",
            },
        },
        INSIGHT =
        {
            CURSES_TITLE = "【七项诅咒】",
            CURSES =
            {
                "1. 受难：最终受到的战斗伤害增加35%",
                "2. 众生敌意：中立生物敌视；无法招募或驯服生物",
                "3. 甲胄失效：护甲只有0.75倍效益",
                "4. 猎物反噬：对敌伤害削减20%；对boss削减30%",
                "5. 永燃：燃烧永不熄灭",
                "6. 灵魂破裂：死亡扣除20%生命上限",
                "7. 失眠：无法睡眠；夜晚与洞穴黑暗理智下降翻倍",
            },
            BLESSINGS_TITLE = "【七项祝福】",
            BLESSINGS =
            {
                "1. 福祸相依：幸运 +1",
                "2. 强取豪夺：抢夺 +1",
                "3. 以战养战：击杀生物恢复生命",
                "4. 禁术灌注：玩家等级 +10",
                "5. 七咒馈赠：解锁七咒掉落",
                "6. 暗影随行：随身访问麦斯威尔的魔术箱",
                "7. 我命由我：制作、装备、触发七咒遗物",
            },
            SOULBOUND = "灵魂绑定 · 无法摘除",
        },
    },
    en =
    {
        ROWBOAT =
        {
            NAMES = { MC_OAK_BOAT = "Oak Boat", MC_OAK_CHEST_BOAT = "Oak Chest Boat" },
            RECIPE_DESC =
            {
                MC_OAK_BOAT = "A two-oared oak boat.",
                MC_OAK_CHEST_BOAT = "Bring all your belongings.",
            },
            DESCRIBE =
            {
                MC_OAK_BOAT = "Is it really sturdy?",
                MC_OAK_CHEST_BOAT = "It displaces a lot of water.",
            },
            ITEM_DESCRIBE = "Deploy it on the ocean near the shore, then hop aboard.",
            ACTION = "Row",
            CHEST_TOGGLE = "Click to open or close the chest",
        },
        HOSTILES =
        {
            NAMES = { MC_SKELETON = "Skeleton", MC_ZOMBIE = "Zombie" },
            DESCRIBE =
            {
                MC_SKELETON = "Watch out for its bow and arrows.",
                MC_ZOMBIE = "Don't let it get close.",
            },
        },
        CREEPER =
        {
            NAME = "Creeper",
            DESCRIBE = "When it stops, it's time to run!",
        },
        ENDER_DRAGON =
        {
            NAMES =
            {
                ENDER_DRAGON = "Ender Dragon",
                MC_ENDER_HAND_LEFT = "Void Hand: Left Wing (1)",
                MC_ENDER_HAND_RIGHT = "Void Hand: Right Wing (2)",
                MC_ENDER_HAND_HEAD = "Void Hand: Head (3)",
                MC_ENDER_SOULBURN = "Soul Scorch",
                MC_ENDER_PROJECTILE = "Ender Dragon Breath Projectile",
            },
            DESCRIBE =
            {
                ENDER_DRAGON = "The ultimate.",
                MC_ENDER_HAND_LEFT = "The first binding.",
                MC_ENDER_HAND_RIGHT = "The second binding.",
                MC_ENDER_HAND_HEAD = "The final binding.",
                MC_ENDER_SOULBURN = "Lasts 10 seconds, dealing 2% of maximum health each second. Each wound prevents recovering that health for 5 minutes.",
                MC_ENDER_PROJECTILE = "80 physical damage plus planar damage equal to 10% of current health on impact.",
            },
            SOUL_WARNING = "I've been scorched!",
        },
        UI =
        {
            INVENTORY = "Inventory",
            BACKPACK = "Backpack",
            SPELLSTONE = "Spellstone",
            RING = "Ring",
            RELIC = "Relic",
            AMULET = "Amulet",
            MEDAL = "Medal",
            EXTRA_EQUIPMENT = "Extra Gear",
            EXTRA_EQUIPMENT_SLOT = "Extra equipment slot %d",
            EXTRA_EQUIPMENT_PREVIOUS = "Prev",
            EXTRA_EQUIPMENT_NEXT = "Next",
            EXTRA_EQUIPMENT_PAGE = "%d / %d",
            SCRAPBOOK = "Scrapbook",
            COOKBOOK = "Cookbook",
            SKILL_TREE = "Skill Tree",
            ENDER_CHEST_TOOLTIP =
                "Ender Chest (close with the inventory key)",
            STATUS =
            {
                EXPERIENCE_LEVEL_FMT = "Player Level %d",
                EXPERIENCE_FORMAT =
                    "Player Level: %d\nCurrent XP: %d/%d",
                EXPERIENCE_PROGRESS_FMT = "%d/%d",
                HEALTH_FORMAT = "Health: %d/%d",
                HUNGER_FORMAT = "Hunger: %d/%d",
                MOUNT_HEALTH_FORMAT = "Mount Health: %d/%d",
                ARMOR_FORMAT = "Armor Durability: %d%%",
                ABSORPTION_FORMAT = "Damage Absorption: %d/%d",
                EXPERIENCE_TOOLTIP_FMT =
                    "Player Level: %d\nCurrent XP: %d/%d",
                HEALTH_TOOLTIP_FMT = "Health: %d/%d",
                HUNGER_TOOLTIP_FMT = "Hunger: %d/%d",
                MOUNT_HEALTH_TOOLTIP_FMT = "Mount Health: %d/%d",
                ARMOR_TOOLTIP_FMT = "Armor Durability: %d%%",
                ABSORPTION_TOOLTIP_FMT = "Damage Absorption: %d/%d",
            },
            HUD_SETTINGS =
            {
                TITLE = "HUD Settings",
                BUTTON_TOOLTIP = "Status bar and HUD settings",
                APPLY = "Apply",
                CANCEL = "Cancel",
                STATUS_ENABLED = "Use Minecraft Status Bar",
                STATUS_ENABLED_TOOLTIP =
                    "Show the ten-icon Minecraft status bar above the inventory; disabling it restores the vanilla status bar.",
                HEALTH_ENABLED = "Show Minecraft Health",
                HEALTH_ENABLED_TOOLTIP =
                    "Show health in the Minecraft status bar; disabling it keeps the vanilla health badge.",
                HUNGER_ENABLED = "Show Minecraft Hunger",
                HUNGER_ENABLED_TOOLTIP =
                    "Show hunger in the Minecraft status bar; disabling it keeps the vanilla hunger badge.",
                ARMOR_ENABLED = "Show Armor",
                ARMOR_ENABLED_TOOLTIP =
                    "Show durability for equipped head and body armor.",
                PET_HEALTH_ENABLED = "Show Pet / Mount Health",
                PET_HEALTH_ENABLED_TOOLTIP =
                    "Show the vanilla pet-health badge and Minecraft mount-health row.",
                SANITY_CENTERED = "Center Sanity",
                SANITY_CENTERED_TOOLTIP =
                    "Move the vanilla sanity badge to the center of the Minecraft status bar.",
                SHOW_VANILLA_STATUS = "Also Show Vanilla Status Bar",
                SHOW_VANILLA_STATUS_TOOLTIP =
                    "Keep the vanilla health and hunger badges alongside enabled Minecraft meters.",
                FULL_HUD_SKIN_ENABLED = "Full Minecraft HUD Skin",
                FULL_HUD_SKIN_ENABLED_TOOLTIP =
                    "Replace vanilla HUD, crafting, container, button, and status textures.",
                FULL_HUD_SKIN_UNAVAILABLE_TOOLTIP =
                    "A standalone Minecraft HUD mod is already managing the skin, so this option is unavailable.",
            },
            ENCHANTING =
            {
                TITLE = "Enchanting Table",
                OPEN = "Enchant",
                ITEM_SLOT = "Item to Enchant",
                TARGET_SLOT = "Item to Enchant",
                NITRE_SLOT = "Nitre / Sacrifice",
                CATALYST_SLOT =
                    "Nitre, Enchanted Book, or Matching Enchanted Item",
                APPLY = "Enchant",
                BUTTON = "Enchant",
                LEVEL_FMT = "Required Level: %d",
                REQUIRED_LEVEL_FORMAT = "Required Level: %d",
                NITRE_FMT = "Nitre Cost: %d",
                NITRE_COST_FORMAT = "Nitre Cost: %d",
                CURRENT_LEVEL_FMT = "Player Level: %d",
                CAPACITY_FMT = "Enchanting Capacity: %d/30",
                POWER_FMT =
                    "Enchanting Cap: %d/%d · Valid Bookcases: %d/%d",
                POWER_FORMAT =
                    "Enchanting Cap: %d/%d · Valid Bookcases: %d/%d",
                REQUIRED_FMT = "Requires Level %d",
                COST_FMT = "Costs %d levels · %d nitre",
                TRANSFER_COST_FMT = "Transfer costs %d levels",
                TRANSFER_HELP_FMT =
                    "Transfer enchantments for %d actual levels.",
                TRANSFER_BUTTON = "Transfer Enchantments",
                OFFER_FMT = "%s %s · Requires Level %d",
                OFFER_PREVIEW_FMT = "%s %s ...",
                OFFER_LOCKED = "Unavailable",
                UNKNOWN_OFFER = "Mysterious Script",
                GLYPH_ALPHABET = "abcdefghijklmnopqrstuvwxyz",
                EMPTY_HINT =
                    "Insert equipment or a Book; use nitre, an Enchanted Book, or a matching enchanted item as the catalyst.",
                HELP =
                    "Each Bookcase needs at least three different book types to count; 12 valid Bookcases reach level 30.",
                READY_FMT =
                    "%s %s · Requires level %d; costs %d levels and %d nitre",
                REASONS =
                {
                    INVALID_TARGET =
                        "Insert enchantable equipment or a Book.",
                    INSUFFICIENT_NITRE = "Not enough nitre.",
                    INSUFFICIENT_LEVEL = "Your player level is too low.",
                    INSUFFICIENT_XP = "You lack enough spendable actual levels.",
                    NO_POWER =
                        "Place valid Bookcases near the Prestihatitator.",
                    INVALID_OFFER = "That enchantment offer is unavailable.",
                    STALE_OFFER =
                        "The enchantment offers changed. Choose again.",
                    CONFLICT =
                        "That offer conflicts with an existing enchantment.",
                    ALREADY_AT_LEVEL =
                        "The enchantment on the equipment has already reached that level.",
                    INVALID_CATALYST =
                        "The catalyst slot must contain nitre.",
                    INVALID_SACRIFICE =
                        "The sacrifice must be an Enchanted Book or a matching enchanted item.",
                    NO_TRANSFERABLE_ENCHANTMENT =
                        "The sacrifice has no enchantment that can be transferred.",
                    INELIGIBLE_TARGET =
                        "The sacrifice's enchantments do not apply to the target.",
                    PROTECTED_ITEM =
                        "Soulbound or protected items cannot be disenchanted.",
                    NOT_ENCHANTED =
                        "This item has no ordinary enchantments.",
                },
            },
            GRINDSTONE =
            {
                TITLE = "Grindstone",
                OPEN = "Use Grindstone",
                ITEM_SLOT = "Item to Disenchant",
                TARGET_SLOT = "Item to Disenchant",
                FIRST_INPUT_SLOT = "Input One",
                SECOND_INPUT_SLOT = "Input Two",
                OUTPUT_SLOT = "Result",
                DISENCHANT = "Disenchant",
                BUTTON = "Process",
                BUTTON_TOOLTIP = "Process the input items",
                EMPTY_HINT =
                    "Insert an enchanted item, or two matching durable items.",
                HELP =
                    "Removes ordinary enchantments; two items of the same type combine durability and restore an additional 5%.",
                REFUND_FMT = "Estimated refund: %d enchantment XP",
                REFUND_FORMAT = "Estimated refund: %d enchantment XP",
                REASONS =
                {
                    INVALID_TARGET =
                        "Insert an enchanted item, or two matching durable items.",
                    PROTECTED_ITEM =
                        "Soulbound or protected items cannot be disenchanted.",
                    NOT_ENCHANTED = "This item has no ordinary enchantments.",
                    ONLY_CURSES_REMAIN =
                        "Only curses that the grindstone cannot remove remain.",
                    OUTPUT_OCCUPIED = "Remove the item from the result slot first.",
                    INVALID_REPAIR_PAIR =
                        "Both inputs must be the same kind of durable item.",
                },
            },
        },
        ACTIONS =
        {
            MILK = "Milk",
        },
        NAMES =
        {
            BUCKET = "Iron Bucket",
            MILK_BUCKET = "Milk Bucket",
            TOTEM_OF_UNDYING = "Totem of Undying",
            RING_SEVEN_CURSES = "Ring of Seven Curses",
            SOUL_REPAIR = "Soul Stitching",
            MAGICIAN_CHEST = "Maxwell's Magician Chest",
            BOOK = "Book",
            ENCHANTED_BOOK = "Enchanted Book",
            ENCHANTED_BOOK_FMT = "Enchanted Book: %s %s",
        },
        DESCRIBE =
        {
            BUCKET = "A sturdy iron bucket.",
            MILK_BUCKET =
                "A bucket of milk that clears all timed effects, leaving an iron bucket after it is drunk or spoils.",
            TOTEM_OF_UNDYING =
                "Equipped in the Relic slot, it bears one fatal blow for its wearer and grants 1 second of invulnerability when triggered.",
            RING_SEVEN_CURSES =
                "Seven blessings and seven curses are carved into the soul.",
            SOUL_REPAIR = "It exists only for the instant crafting is completed.",
            BOOK = "An ordinary book waiting to record magic.",
            ENCHANTED_BOOK = "Its pages hold one or more enchantments.",
        },
        RECIPE_DESC =
        {
            BUCKET = "For carrying fresh milk.",
            SOUL_REPAIR =
                "Repair one soul fracture.",
            MAGICIAN_CHEST =
                "A shadow magician's chest shared with Ender Storage.",
            BOOK = "Bind a book with Pig Skin or Tentacle Spots.",
            ENCHANTED_BOOK =
                "Stores enchantments that can transfer to a suitable item.",
        },
        ACTIONFAIL =
        {
            NO_SOUL_FRACTURE = "My soul has no fractures to repair.",
        },
        MESSAGES =
        {
            SOUL_REPAIRED = "One soul fracture has been repaired.",
            ADMIN_RELEASED =
                "An administrator released the Ring of Seven Curses' binding.",
            ENCHANT_SUCCESS = "Enchanting complete.",
            ENCHANT_TRANSFER_SUCCESS =
                "The sacrifice's enchantments were transferred.",
            DISENCHANT_SUCCESS_FMT =
                "Disenchanting complete. %d enchantment XP was refunded.",
            ENCHANT_EMPTY_ITEM =
                "Insert enchantable equipment or a Book first.",
            ENCHANT_EMPTY_NITRE = "Insert enough nitre.",
            ENCHANT_INVALID_ITEM = "This item cannot carry that enchantment.",
            ENCHANT_INVALID_OFFER = "That enchantment offer is unavailable.",
            ENCHANT_STALE_OFFER =
                "The enchantment offers changed. Choose again.",
            ENCHANT_CONFLICT =
                "That enchantment conflicts with one already on the item.",
            ENCHANT_NO_UPGRADE =
                "That offer cannot improve the item's existing enchantment.",
            ENCHANT_INVALID_SACRIFICE =
                "The sacrifice must be an Enchanted Book or a matching enchanted item.",
            ENCHANT_NO_TRANSFER =
                "The sacrifice has no enchantment that can be transferred.",
            ENCHANT_INSUFFICIENT_LEVEL =
                "Your player level does not meet this offer's requirement.",
            ENCHANT_INSUFFICIENT_XP =
                "You do not have enough actual levels to pay for this offer.",
            ENCHANT_STATION_UNAVAILABLE =
                "The enchanting table is currently unavailable.",
            ENCHANT_STATION_BUSY =
                "Another player is using this Prestihatitator.",
            ENCHANT_TOO_FAR = "You are too far from the enchanting table.",
            DISENCHANT_EMPTY_ITEM =
                "Insert an enchanted item, or two matching durable items.",
            DISENCHANT_NONE =
                "This item has no removable ordinary enchantments.",
            DISENCHANT_FORBIDDEN =
                "Soulbound or protected items cannot be disenchanted.",
            DISENCHANT_OUTPUT_OCCUPIED =
                "Take the item from the grindstone's result slot first.",
            DISENCHANT_INVALID_PAIR =
                "Both grindstone inputs must be the same durable item.",
            DISENCHANT_STATION_UNAVAILABLE =
                "The grindstone is currently unavailable.",
            DISENCHANT_STATION_BUSY =
                "Another player is using this grindstone.",
            DISENCHANT_TOO_FAR = "You are too far from the grindstone.",
            EXPERIENCE_GAIN_FMT = "Gained %d XP.",
        },
        TOOLTIP =
        {
            ENCHANTMENT_LINE_FMT = "%s %s",
            ENCHANTED_BOOK_NAME_FMT = "Enchanted Book: %s %s",
            UNKNOWN_ENCHANTMENT = "Unknown Enchantment",
        },
        ENCHANTMENTS =
        {
            SHARPNESS =
            {
                NAME = "Sharpness",
                DESC_FMT = "Increases ordinary physical damage by %d%%.",
            },
            SMITE =
            {
                NAME = "Smite",
                DESC_FMT =
                    "Increases ordinary physical damage against shadow, nightmare, ghost, and undead targets by %d%%.",
            },
            LOOTING =
            {
                NAME = "Looting",
                DESC_FMT = "%d%% chance to gain one extra ordinary drop.",
            },
            PROTECTION =
            {
                NAME = "Protection",
                DESC_FMT = "Reduces final combat damage taken by %d%%.",
            },
            FIRE_PROTECTION =
            {
                NAME = "Fire Protection",
                DESC_FMT = "Shortens burning duration by %d%%.",
            },
            UNBREAKING =
            {
                NAME = "Unbreaking",
                DESC_FMT = "%d%% chance to avoid durability loss.",
            },
            EFFICIENCY =
            {
                NAME = "Efficiency",
                DESC_FMT = "Increases tool effectiveness by %d%%.",
            },
            BINDING_CURSE =
            {
                NAME = "Curse of Binding",
                DESC_FMT =
                    "Cannot be voluntarily unequipped and remains equipped on death; durability exhaustion unlocks it, while Stuffed Night Cap sleep removes no-durability items.",
            },
            VANISHING_CURSE =
            {
                NAME = "Curse of Vanishing",
                DESC_FMT = "Disappears when its bearer dies.",
            },
        },
        INSIGHT =
        {
            CURSES_TITLE = "[Seven Curses]",
            CURSES =
            {
                "1. Suffering: Final combat damage taken increases by 35%",
                "2. Universal Hostility: Neutral creatures become hostile; creatures cannot be recruited or tamed",
                "3. Failed Armor: Armor is only 0.75 times as effective",
                "4. Prey's Vengeance: Damage dealt to enemies is reduced by 20%; by 30% against bosses",
                "5. Eternal Flame: Burning never ends",
                "6. Soul Fracture: Death reduces maximum health by 20%",
                "7. Insomnia: Cannot sleep; sanity drain is doubled at night and in cave darkness",
            },
            BLESSINGS_TITLE = "[Seven Blessings]",
            BLESSINGS =
            {
                "1. Fortune's Price: Luck +1",
                "2. Taking by Force: Looting +1",
                "3. War Feeds War: Restore health by killing creatures",
                "4. Forbidden Infusion: Player level +10",
                "5. Sevenfold Gift: Unlock Seven Curses drops",
                "6. Shadow in Tow: Carry access to Maxwell's Magician Chest",
                "7. My Fate, My Own: Craft, equip, and trigger Seven Curses relics",
            },
            SOULBOUND = "Soulbound · Cannot be removed",
        },
    },
}

local CHINESE_LANGUAGE_CODES =
{
    zh = true,
    zht = true,
    zhr = true,
    chs = true,
    cht = true,
    zh_cn = true,
    zh_tw = true,
    zh_hans = true,
    zh_hant = true,
    cn = true,
    tw = true,
    schinese = true,
    tchinese = true,
    chinese_s = true,
    chinese_t = true,
    chinese_s_rail = true,
}

local function NormalizeLanguageCode(language_code)
    if type(language_code) ~= "string" then
        return nil
    end
    local normalized = string.lower(language_code)
    normalized = string.gsub(normalized, "-", "_")
    normalized = string.gsub(normalized, "%s+", "")
    return normalized
end

local function Get(language_code)
    if CHINESE_LANGUAGE_CODES[NormalizeLanguageCode(language_code)] then
        return TRANSLATIONS.zh
    end
    return TRANSLATIONS.en
end

return
{
    Get = Get,
}
