import 'dart:convert';

String jsonStr = '''{
    "markets":[{
        "name": "modnyi_bazar_almaty",
        "category": "Женские товары",
        "listOfProducts": ["Обувь", "Юбка","Платье","Джины","Двойка"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Шымкент", "Астана"]
    },
    {
        "name": "kyzparadise_almaty",
        "category": "Женские товары",
        "listOfProducts": ["Обувь", "Сумка","Одежда","Акссесуары","Кепка"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Астана" ]
    },
    {
        "name": "optom.sumka_almaty",
        "category": "Женские товары",
        "listOfProducts": ["Сумка", "Шоппер","Клатч","Рюкзак"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "Оптом",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "lovely.bags.mika",
        "category": "Женские товары",
        "listOfProducts": ["Сумка", "Рюкзак","Хобо"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "sumka_optom_roznica_almaty",
        "category": "Женские товары",
        "listOfProducts": ["Сумка"],
        "city": "Almaty",
        "businessAccount": true,
        "type": ["В розницу", "Оптом"],
        "branch": ["Отсутствует" ]
    },
    {
        "name": "trend_dress.kz",
        "category": "Женские товары",
        "listOfProducts": ["Женская одежда", "Юбка","Платье","Джинсы","Двойка", "Топ","Пиджак", "Корсет", "Тренч", "Домашние тапочки"],
        "city": "Almaty",
        "businessAccount": true,
        "type": ["В розницу"],
        "branch": ["Отсутствует" ]
    },
    {
        "name": "tomy.bag",
        "category": "Женские товары",
        "listOfProducts": ["Сумка люкс копии"],
        "city": "Almaty",
        "businessAccount": false,
        "type": ["В розницу"],
        "branch": ["Отсутствует" ]
    },
    {
        "name": "sumka.al",
        "category": "Женские товары",
        "listOfProducts": ["Чемодан", "Подарки","Сертификат"],
        "city": "Almaty",
        "businessAccount": true,
        "type": ["В розницу"],
        "branch": ["Отсутствует" ]
    },
    {
        "name": "crystalbags.almaty",
        "category": "Женские товары",
        "listOfProducts": ["Сумка из бусин", "Хрустальная сумка из бусин"],
        "city": "Almaty",
        "businessAccount": true,
        "type": ["В розницу"],
        "branch": ["Отсутствует" ]
    },
    {
        "name": "arushka_bags",
        "category": "Женские товары",
        "listOfProducts": ["Люксовые сумки"],
        "city": "Almaty",
        "businessAccount": false,
        "type": ["В розницу"],
        "branch": ["Отсутствует" ]
    },
    {
        "name": "sumka_alemi",
        "category": "Женские товары",
        "listOfProducts": ["Сумка", "Рюкзак"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "Оптом",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "sumka.almaty85",
        "category": ["Женские товары", "Мужские товары"],
        "listOfProducts": ["Мужская сумка", "Мужские рюкзаки","Барсетка","Ремни женские","Ремни мужские", "Кошелек женский", "Кошелек мужской"],
        "city": "Almaty",
        "businessAccount": false,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "sumka_ai.kz",
        "category": "Женские товары",
        "listOfProducts": ["Рюкзак для ноутбука", "сумка для ноутбука","Сумка женская","Кошелек"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "Оптом",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "belleza_jetisay01",
        "category": "Женские товары",
        "listOfProducts": ["Косметика", "Бижутерия женская","Бижутерия","Сумка","Духи женские"],
        "city": "Жетисай",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "chia.shoes.kz",
        "category": "Женские товары",
        "listOfProducts": ["Обувь женская", "Сумка","Сандали","Макасы","Туфли", "Украшения", "Лоферы","Сандали", "Кеды", "Кроссовки"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Шымкент", "Астана", "Атырау", "Москва" ]
    },
    {
        "name": "barysmen",
        "category": "Мужские товары",
        "listOfProducts": ["Мужская сумка", "Барсетка"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "sumkavroddom_1",
        "category": "Женские товары",
        "listOfProducts": ["Сумка в роддом", "Детская одежда","Подгузники"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "sumka.almaty_optom",
        "category": "Женские товары",
        "listOfProducts": ["Обувь", "Юбка","Платье","Джины","Двойка"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "Оптом",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "babymama.kz",
        "category": "Женские товары",
        "listOfProducts": ["Обувь", "Юбка","Платье","Джины","Двойка"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "sumka_aalmaty",
        "category": "Женские товары",
        "listOfProducts": ["Сумка женская", "Сумка люкс копии","Люкс"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "Оптом",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "babyone.kz",
        "category": "Женские товары",
        "listOfProducts": ["Сумка в роддом", "Игрушки","Детские футболки","Коляска","Плед", "Детское питание","Пеленки","Муслиновые пеленки", "Детская одежда"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "sumka.optom.mmm",
        "category": "Женские товары",
        "listOfProducts": ["Женская сумка"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "Оптом",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "erkebaby_almaty",
        "category": "Женские товары",
        "listOfProducts": ["Одежда для новорожденных", "Матрас для коляски","Одежда для ебеременных и кормящих","Кокон для новорожденных", "Сумка в роддом"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "optom_sumka.lux",
        "category": "Женские товары",
        "listOfProducts": ["Сумка люкс копии", "Люкс","Люксовые сумки"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "Оптом",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "sumki_bagskzo",
        "category": "Женские товары",
        "listOfProducts": ["Сумка люкс копии", "Кроссбоди","Рюкзаки","Объемные сумки"],
        "city": "Kyzylorda",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "optom_sumka_rukzak",
        "category": ["Женские товары", "Мужские товары"],
        "listOfProducts": ["Детские рюкзаки", "Школьные сумки","Барсетка","Кроссбоди","Сумки люкс копии"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "Оптом",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "kenzhekhan_optom2",
        "category": "Женские товары",
        "listOfProducts": ["Женская одежда", "Сумка женская","Домашняя одежда","Юбка","Женская одежда для больших размеров"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "Оптом",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "sumka_optom_sklad2",
        "category": "Женские товары",
        "listOfProducts": ["Чемодан", "Мужские рюкзаки","Детские рюкзаки","Школьные рюкзаки","Женская сумка"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "Оптом",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "lacoco_box",
        "category": "Женские товары",
        "listOfProducts": ["Чехол для ноутбука(mac)", "Чехол на гаджеты apple","Сумка люкс копии"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "dina_handmade_bags",
        "category": "Женские товары",
        "listOfProducts": ["Сумка из бусин", "Сумка из бисера","Сумка ручной работы"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "sumka.guli",
        "category": "Женские товары",
        "listOfProducts": ["Женские часы", "Сумка женская","Женские рюкзаки","Кошелек"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "toibastar.korzhyn.almaty",
        "category": "Товары для всех",
        "listOfProducts": ["Тойбастар", "Қоржын","Қалта","Декоративная корзина","Призы для тоя", "Коврики для узату", "Коврики для түсау кесер", "Национальная одежда для детей"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "barsetka_alm",
        "category": "Мужские товары",
        "listOfProducts": ["Мужские барсетки", "Мужские рюкзаки","Ремни мужские"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "sumka.alemi_tdk",
        "category": "Товары для всех",
        "listOfProducts": ["Чемодан", "Дорожная сумка","Женская сумка","Барсетки","Кошелек"],
        "city": "Taldykorgan",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "shehly_dlya_kovrov",
        "category": "Женские товары",
        "listOfProducts": ["Чехол для ковров", "Чехол для стульев","Наматрасник"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "borsa.kg",
        "category": "Мужские товары",
        "listOfProducts": ["Барсетки", "Чемодан","Походные рюкзаки","Дорожная сумка"],
        "city": "Bishkek",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "nurieelashop",
        "category": "Женские товары",
        "listOfProducts": ["Шопперы", "Женская сумка", "Брошки ручной работы"],
        "city": "Astana",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "qazaq.republic",
        "category": "Товары для всех",
        "listOfProducts": ["Шопперы", "Дорба","Носки","Шалбар","Жейде", "Толстовка","Бомбер", "Панама","Кепка","Бөтелке","Кружки", "Стикер","Футболка"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Астана" ]
    },
    {
        "name": "shoqansuits",
        "category": "Мужские товары",
        "listOfProducts": ["Мужские костюмыь", "Носки","Бомбер"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Астана", "Шымкент"  ]
    },
    {
        "name": "bes_jyl",
        "category": "Женские товары",
        "listOfProducts": ["Сумки ручной работы"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "mia.me",
        "category": "Женские товары",
        "listOfProducts": ["Обувь", "Юбка","Платье","Джинсы","Двойка", "Лосины"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "shlyapa.kz",
        "category": "Женские товары",
        "listOfProducts": ["Шляпы", "Кепки","Пляжные сумки","Накидка сверху купальник"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "beepl_space",
        "category": "Женские товары",
        "listOfProducts": ["Акссесуары", "Брелок","Боди","Юбка","Сумка женская"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "dana_bags_kz",
        "category": "Женские товары",
        "listOfProducts": ["Вязанные сумки ручной работы", "Сумки ручной работы","Корзины","Детали интерьера"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "nazibags",
        "category": "Женские товары",
        "listOfProducts": ["Сумка ручной работы", "Вязанные сумки ручной работы","Сумка из бисера","Сумка из бисера"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "handmade_by_togzhan",
        "category": "Женские товары",
        "listOfProducts": ["Вязанные сумки ", "Акссесуары","Корзины","Шапки для женщин"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "bagstone.kz1",
        "category": "Товары для всех",
        "listOfProducts": ["Дорожная сумка", "Спортивные сумки","Походные рюкзаки"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "raai_bags",
        "category": "Женские товары",
        "listOfProducts": ["Кожанная сумка"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    },
    {
        "name": "ultan.kz",
        "category": "Мужские товары",
        "listOfProducts": ["Обувь", "Барсетка","Кошелек","Ремень мужской","Дорожная сумка", "Жайнамаз"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
        
    },
    {
        "name": "pretender.krd_",
        "category": "Мужские товары",
        "listOfProducts": ["Кожанные куртки", "Мужские куртки","Мужская кожанка","Муджской ","Двойка"],
        "city": "Almaty",
        "businessAccount": true,
        "type": "В розницу",
        "branch": ["Отсутствует" ]
    }
]
  }''';

Map<String, dynamic> json = jsonDecode(jsonStr);
List<dynamic> markets = json['markets'];
