-- Traditional Chinese translation supplied by the user.
return
{
        ROWBOAT =
        {
            NAMES = { MC_OAK_BOAT = "橡木船", MC_OAK_CHEST_BOAT = "儲物箱橡木船" },
            RECIPE_DESC =
            {
                MC_OAK_BOAT = "帶有兩把槳的橡木船。",
                MC_OAK_CHEST_BOAT = "帶上全部家當。",
            },
            DESCRIBE =
            {
                MC_OAK_BOAT = "它真的堅固嗎？",
                MC_OAK_CHEST_BOAT = "排水量很大。",
            },
            ITEM_DESCRIBE = "把它放在岸邊的海面上，再跳上船。",
            ACTION = "划船",
            CHEST_TOGGLE = "點擊開關儲物箱",
        },
        HOSTILES =
        {
            NAMES = { MC_SKELETON = "骷髏", MC_ZOMBIE = "殭屍" },
            DESCRIBE =
            {
                MC_SKELETON = "小心它的弓箭。",
                MC_ZOMBIE = "別讓他靠近過來。",
            },
        },
        CREEPER =
        {
            NAME = "苦力怕",
            DESCRIBE = "它停下來時就代表該跑了！",
        },
        ENDER_DRAGON =
        {
            NAMES =
            {
                ENDER_DRAGON = "終界龍",
                MC_ENDER_HAND_LEFT = "虛空之手·左翼（1）",
                MC_ENDER_HAND_RIGHT = "虛空之手·右翼（2）",
                MC_ENDER_HAND_HEAD = "虛空之手·頭部（3）",
                MC_ENDER_SOULBURN = "魂灼",
                MC_ENDER_PROJECTILE = "終界龍吐息彈",
            },
            DESCRIBE =
            {
                ENDER_DRAGON = "終極",
                MC_ENDER_HAND_LEFT = "第一道束縛。",
                MC_ENDER_HAND_RIGHT = "第二道束縛。",
                MC_ENDER_HAND_HEAD = "最后一道束縛。。",
                MC_ENDER_SOULBURN = "持續10秒，每秒損失最大生命值的2%；每次因此損失的血量5分鐘內無法恢復。",
                MC_ENDER_PROJECTILE = "80點物理傷害，外加命中時目前生命值10%的位面傷害。",
            },
            SOUL_WARNING = "我被火燙到了！",
        },
        UI =
        {
            INVENTORY = "物品欄",
            BACKPACK = "背包",
            SPELLSTONE = "術石",
            RING = "戒指",
            RELIC = "遺物",
            AMULET = "護符",
            MEDAL = "勳章",
            EXTRA_EQUIPMENT = "額外裝備",
            EXTRA_EQUIPMENT_SLOT = "額外裝備欄 %d",
            EXTRA_EQUIPMENT_PREVIOUS = "上一頁",
            EXTRA_EQUIPMENT_NEXT = "下一頁",
            EXTRA_EQUIPMENT_PAGE = "%d / %d",
            SCRAPBOOK = "圖鑑",
            COOKBOOK = "食譜",
            SKILL_TREE = "技能樹",
            ENDER_CHEST_TOOLTIP = "終界箱（物品欄按鍵關閉）",
            STATUS =
            {
                EXPERIENCE_LEVEL_FMT = "玩家等級 %d",
                EXPERIENCE_FORMAT =
                    "玩家等級：%d\n目前經驗：%d/%d",
                EXPERIENCE_PROGRESS_FMT = "%d/%d",
                HEALTH_FORMAT = "生命：%d/%d",
                HUNGER_FORMAT = "飢餓：%d/%d",
                MOUNT_HEALTH_FORMAT = "坐騎生命：%d/%d",
                ARMOR_FORMAT = "護甲耐久：%d%%",
                ABSORPTION_FORMAT = "傷害吸收：%d/%d",
                EXPERIENCE_TOOLTIP_FMT =
                    "玩家等級：%d\n目前經驗：%d/%d",
                HEALTH_TOOLTIP_FMT = "生命：%d/%d",
                HUNGER_TOOLTIP_FMT = "飢餓：%d/%d",
                MOUNT_HEALTH_TOOLTIP_FMT = "坐騎生命：%d/%d",
                ARMOR_TOOLTIP_FMT = "護甲耐久：%d%%",
                ABSORPTION_TOOLTIP_FMT = "傷害吸收：%d/%d",
            },
            HUD_SETTINGS =
            {
                SPRINT_CONTROL_LABEL = "我的饑荒：奔跑（按住）",
                SPRINT_KEY = "奔跑按鍵：%s（點擊修改）",
                SPRINT_KEY_CAPTURE = "請按字母鍵或修飾鍵；Esc 取消",
                SPRINT_KEY_TOOLTIP = "按住奔跑；支援 A–Z、左右 Shift/Ctrl/Alt。點擊後按鍵，套用後儲存。預設左 Shift。",
                SPRINT_KEY_NAMES = { LSHIFT = "左 Shift", RSHIFT = "右 Shift", LCTRL = "左 Ctrl",
                    RCTRL = "右 Ctrl", LALT = "左 Alt", RALT = "右 Alt" },
                TITLE = "HUD 設定",
                BUTTON_TOOLTIP = "狀態欄與 HUD 設定",
                APPLY = "套用",
                CANCEL = "取消",
                STATUS_ENABLED = "使用 Minecraft 狀態欄",
                STATUS_ENABLED_TOOLTIP =
                    "啟用物品欄上方的 Minecraft 狀態欄；關閉時恢復原版狀態欄。",
                HEALTH_ENABLED = "顯示 Minecraft 生命值",
                HEALTH_ENABLED_TOOLTIP =
                    "在 Minecraft 狀態欄中顯示生命值；關閉後保留原版生命圖示。",
                HUNGER_ENABLED = "顯示 Minecraft 飢餓值",
                HUNGER_ENABLED_TOOLTIP =
                    "在 Minecraft 狀態欄中顯示飢餓值；關閉後保留原版飢餓圖示。",
                ARMOR_ENABLED = "顯示護甲值",
                ARMOR_ENABLED_TOOLTIP =
                    "顯示已裝備頭部與身體護甲的耐久度。",
                PET_HEALTH_ENABLED = "顯示寵物／坐騎生命值",
                PET_HEALTH_ENABLED_TOOLTIP =
                    "顯示原版寵物生命值圖示和 Minecraft 坐騎生命值。",
                SANITY_CENTERED = "理智值置中",
                SANITY_CENTERED_TOOLTIP =
                    "將原版理智圖示移到 Minecraft 狀態欄中央。",
                SHOW_VANILLA_STATUS = "同時顯示原版狀態欄",
                SHOW_VANILLA_STATUS_TOOLTIP =
                    "保留原版生命與飢餓圖示，同時顯示已啟用的 Minecraft 狀態欄。",
                FULL_HUD_SKIN_ENABLED = "更換為 Minecraft HUD",
                FULL_HUD_SKIN_ENABLED_TOOLTIP =
                    "替換原版 HUD、製作欄、容器、按鈕和狀態欄造型。",
                FULL_HUD_SKIN_UNAVAILABLE_TOOLTIP =
                    "偵測到原版 Minecraft HUD 模組已經啟用，故無需額外啟用。",
            },
            ENCHANTING =
            {
                TITLE = "附魔台",
                OPEN = "附魔",
                ITEM_SLOT = "待附魔物品",
                TARGET_SLOT = "待附魔物品",
                NITRE_SLOT = "硝石 / 犧牲品",
                CATALYST_SLOT = "硝石、附魔書或同類附魔裝備",
                APPLY = "附魔",
                BUTTON = "附魔",
                LEVEL_FMT = "等級需求：%d",
                REQUIRED_LEVEL_FORMAT = "等級需求：%d",
                NITRE_FMT = "硝石需求：%d",
                NITRE_COST_FORMAT = "硝石需求：%d",
                CURRENT_LEVEL_FMT = "玩家等級：%d",
                CAPACITY_FMT = "附魔能力：%d/30",
                POWER_FMT = "附魔上限：%d/%d可用書櫃：%d/%d",
                POWER_FORMAT = "附魔上限：%d/%d可用書櫃：%d/%d",
                REQUIRED_FMT = "需要 %d 級",
                COST_FMT = "花費： %d 級 · %d 個硝石",
                TRANSFER_COST_FMT = "轉移花費 %d 級",
                TRANSFER_HELP_FMT = "轉移附魔：將花費 %d 級。",
                TRANSFER_BUTTON = "轉移附魔",
                OFFER_FMT = "%s %s · 需求 %d 級",
                OFFER_PREVIEW_FMT = "%s %s ……",
                OFFER_LOCKED = "不可用",
                UNKNOWN_OFFER = "神秘文字",
                GLYPH_ALPHABET = "abcdefghijklmnopqrstuvwxyz",
                EMPTY_HINT = "放入裝備或書；欄位可放入硝石、附魔書或同類附魔裝備。",
                HELP = "每個書櫃需至少有 3 種不同書籍才有效；附近有 12 個可用書櫃達到 30 級。",
                READY_FMT = "%s %s · 需求 %d 級；花費 %d 級與 %d 個硝石",
                REASONS =
                {
                    INVALID_TARGET = "請放入可附魔的裝備或書。",
                    INSUFFICIENT_NITRE = "硝石數量不足。",
                    INSUFFICIENT_LEVEL = "玩家等級不足。",
                    INSUFFICIENT_XP = "可花費的等级不足。",
                    NO_POWER = "靈子分解器附近需要可用的書櫃。",
                    INVALID_OFFER = "此附魔目前不可用。",
                    STALE_OFFER = "附魔選項已變化，請重新選擇。",
                    CONFLICT = "此附魔與裝備上已有的附魔不相容。",
                    ALREADY_AT_LEVEL = "裝備上的附魔已達到該等級。",
                    INVALID_CATALYST = "欄位必須放入硝石。",
                    INVALID_SACRIFICE = "犧牲品必须是附魔書或同類附魔裝備。",
                    NO_TRANSFERABLE_ENCHANTMENT = "犧牲品沒有可轉移的附魔。",
                    INELIGIBLE_TARGET = "犧牲品上的附魔不適用於目標物品。",
                    PROTECTED_ITEM = "詛咒、靈魂綁定或受保護的物品不能移除附魔。",
                    NOT_ENCHANTED = "這件物品沒有附魔。",
                },
            },
            GRINDSTONE =
            {
                TITLE = "砂輪",
                OPEN = "使用砂輪",
                ITEM_SLOT = "待移除附魔物品",
                TARGET_SLOT = "待移除附魔物品",
                FIRST_INPUT_SLOT = "輸入一",
                SECOND_INPUT_SLOT = "輸入二",
                OUTPUT_SLOT = "結果",
                DISENCHANT = "移除附魔",
                BUTTON = "處理",
                BUTTON_TOOLTIP = "處理已放入物品",
                EMPTY_HINT = "放入附魔物品，或兩件同類物品。",
                HELP = "移除附魔；結合之前兩個物品的耐久度，並給予額外 5% 的耐久度。",
                REFUND_FMT = "預計歸還：%d 點經驗值",
                REFUND_FORMAT = "預計歸還：%d 點經驗值",
                REASONS =
                {
                    INVALID_TARGET = "請放入附魔物品，或兩件同類物品。",
                    PROTECTED_ITEM = "詛咒、靈魂綁定或受保護的物品不能移除附魔。",
                    NOT_ENCHANTED = "這件物品沒有附魔。",
                    ONLY_CURSES_REMAIN = "這裡只剩下砂輪無法移除的詛咒。",
                    OUTPUT_OCCUPIED = "請先取走結果格中的物品。",
                    INVALID_REPAIR_PAIR = "兩件已放入物品必須是同種可損耗物品。",
                },
            },
        },
        ACTIONS =
        {
            MILK = "擠奶",
        },
        NAMES =
        {
            BUCKET = "鐵桶",
            MILK_BUCKET = "牛奶統",
            TOTEM_OF_UNDYING = "不死圖騰",
            RING_SEVEN_CURSES = "七咒之戒",
            SOUL_REPAIR = "靈魂縫合",
            MAGICIAN_CHEST = "麥斯威爾的魔術箱",
            BOOK = "書",
            ENCHANTED_BOOK = "附魔書",
            ENCHANTED_BOOK_FMT = "附魔書：%s %s",
        },
        DESCRIBE =
        {
            BUCKET = "一個堅固的鐵桶。",
            MILK_BUCKET =
                "一桶能去除所有限時狀態效果的牛奶，喝完或變質後會留下鐵桶。",
            TOTEM_OF_UNDYING =
                "裝備在遺物欄，能夠替配戴者承受一次致命傷害，並在發動後提供1秒無敵。",
            RING_SEVEN_CURSES = "七重祝福與七重詛咒，都已刻進了靈魂。",
            SOUL_REPAIR = "它只在製作完成的一瞬間存在。",
            BOOK = "一本等待紀錄魔法的普通書本。",
            ENCHANTED_BOOK = "附魔的力量在書頁其中流動。",
        },
        RECIPE_DESC =
        {
            BUCKET = "用來盛裝新鮮牛奶。",
            SOUL_REPAIR = "修復一層靈魂破裂。",
            MAGICIAN_CHEST = "與終界箱空間互通的暗影魔術箱。",
            BOOK = "用豬皮或觸手皮裝訂一本書。",
            ENCHANTED_BOOK = "保存可轉移到合適物品上的附魔。",
        },
        ACTIONFAIL =
        {
            NO_SOUL_FRACTURE = "我的靈魂目前沒有可以修復的裂痕。",
        },
        MESSAGES =
        {
            SOUL_REPAIRED = "靈魂裂痕被修復了一層。",
            ADMIN_RELEASED = "七咒之戒的束縛已被管理員解除。",
            ENCHANT_SUCCESS = "附魔完成。",
            ENCHANT_TRANSFER_SUCCESS = "犧牲品上的附魔已轉移。",
            DISENCHANT_SUCCESS_FMT = "移除附魔完成，歸還了 %d 點經驗值。",
            ENCHANT_EMPTY_ITEM = "請先放入可附魔的裝備或書。",
            ENCHANT_EMPTY_NITRE = "請放入足夠的硝石。",
            ENCHANT_INVALID_ITEM = "此物品不能承載該附魔。",
            ENCHANT_INVALID_OFFER = "此附魔目前不可用。",
            ENCHANT_STALE_OFFER = "附魔選項已變化，請重新選擇。",
            ENCHANT_CONFLICT = "此附魔與裝備上已有的附魔不相容。",
            ENCHANT_NO_UPGRADE = "此附魔無法繼續提升現有附魔。",
            ENCHANT_INVALID_SACRIFICE = "犧牲品必须是附魔書或同類附魔裝備。",
            ENCHANT_NO_TRANSFER = "犧牲品沒有可轉移的附魔。",
            ENCHANT_INSUFFICIENT_LEVEL = "你的玩家等級未達到此附魔的門檻。",
            ENCHANT_INSUFFICIENT_XP = "你的等級不足以花費。",
            ENCHANT_STATION_UNAVAILABLE = "附魔台目前無法使用。",
            ENCHANT_STATION_BUSY = "此靈子分解器正被其他玩家使用。",
            ENCHANT_TOO_FAR = "你離附魔台太遠了。",
            DISENCHANT_EMPTY_ITEM = "請放入附魔物品，或兩件同類物品。",
            DISENCHANT_NONE = "這件物品沒有可移除的附魔。",
            DISENCHANT_FORBIDDEN = "詛咒、靈魂綁定或受保護的物品不能移除附魔。",
            DISENCHANT_OUTPUT_OCCUPIED = "請先取走結果格中的物品。",
            DISENCHANT_INVALID_PAIR = "兩件已放入物品必須是同種可損耗物品。",
            DISENCHANT_STATION_UNAVAILABLE = "砂輪目前無法使用。",
            DISENCHANT_STATION_BUSY = "此砂輪正被其他玩家使用。",
            DISENCHANT_TOO_FAR = "你離砂輪太遠了。",
            EXPERIENCE_GAIN_FMT = "獲得 %d 點經驗值。",
        },
        TOOLTIP =
        {
            ENCHANTMENT_LINE_FMT = "%s %s",
            ENCHANTED_BOOK_NAME_FMT = "附魔書：%s %s",
            UNKNOWN_ENCHANTMENT = "未知附魔",
        },
        ENCHANTMENTS =
        {
            SHARPNESS =
            {
                NAME = "鋒利",
                DESC_FMT = "物理傷害提高 %d%%。",
            },
            SMITE =
            {
                NAME = "破魔",
                DESC_FMT =
                    "對暗影、夢魘、幽靈和亡靈目標的物理傷害提高 %d%%。",
            },
            LOOTING =
            {
                NAME = "掠奪",
                DESC_FMT = "%d%% 機率額外獲得掉落物。",
            },
            PROTECTION =
            {
                NAME = "保護",
                DESC_FMT = "受到的傷害降低 %d%%。",
            },
            FIRE_PROTECTION =
            {
                NAME = "火焰保護",
                DESC_FMT = "燃燒持續時間縮短 %d%%。",
            },
            UNBREAKING =
            {
                NAME = "耐久",
                DESC_FMT = "%d%% 機率不消耗裝備耐久度。",
            },
            EFFICIENCY =
            {
                NAME = "效率",
                DESC_FMT = "工具工作效率提高 %d%%。",
            },
            BINDING_CURSE =
            {
                NAME = "綁定詛咒",
                DESC_FMT =
                    "將被附魔物品綁定在裝備欄中、使之無法移除且死亡不掉落，無耐久物品可藉由食用釀夜帽昏睡取下。",
            },
            VANISHING_CURSE =
            {
                NAME = "消失詛咒",
                DESC_FMT = "使被附魔的物品在攜帶者死亡時消失的附魔。",
            },
        },
        INSIGHT =
        {
            CURSES_TITLE = "【七項詛咒】",
            CURSES =
            {
                "1. 受難：最終受到的戰鬥傷害增加 35%",
                "2. 眾生敵意：中立生物會主動仇恨玩家；無法招募或馴服生物",
                "3. 甲冑失效：護甲僅剩 0.75 倍效益",
                "4. 獵物反噬：對敵人造成的傷害減少 20%；對 Boss 減少 30%",
                "5. 永燃：燃燒永不熄滅",
                "6. 靈魂破裂：死亡時扣除 20% 生命上限",
                "7. 失眠：無法睡眠；夜晚與洞穴黑暗中的理智值下降速度變為兩倍",
            },
            BLESSINGS_TITLE = "【七項祝福】",
            BLESSINGS =
            {
                "1. 福禍相依：幸運 +1",
                "2. 強取豪奪：掠奪 +1",
                "3. 以戰養戰：擊殺生物時恢復生命值",
                "4. 禁術灌注：附魔等級 +10",
                "5. 七咒饋贈：解鎖七咒掉落物",
                "6. 暗影隨行：可隨時開啟麥斯威爾的魔術箱",
                "7. 我命由我：可製作、裝備並發動七咒遺物",
            },
            SOULBOUND = "靈魂綁定 · 無法取下",
        },
    }
