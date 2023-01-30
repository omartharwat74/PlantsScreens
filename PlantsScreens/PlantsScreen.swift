//
//  ContentView.swift
//  screenplant2
//
//  Created by Omar Tharwat on 12/12/2023.
//

import SwiftUI

struct PlantsBox  {
    var title , imageURL : String
    var id : Int
}
struct Table {
    var title , imageURL, careWith, overView : String
}

struct ContentView: View {
    @State var selected = 0
    let boxes : [PlantsBox] = [
        PlantsBox( title: "نبات المنزل", imageURL: "house", id: 0),
        PlantsBox( title: "الأماكن العامه", imageURL: "person.3", id: 1),
        PlantsBox( title: "مواقف السيارات", imageURL: "car", id: 2),
        PlantsBox( title: "منطقه المشاه", imageURL: "figure.walk", id: 3),
        PlantsBox( title: " تشجير الشوارع", imageURL: "road.lanes", id: 4),
        PlantsBox( title: "نبات الوادي", imageURL: "lasso", id: 5)
    ]
    let tables : [Table] = [
        Table( title: "كراسولا", imageURL: "0", careWith: " تتحمل النبتة جفاف الهواء، وتحب الضوء الساطع المباشر (أشعة الشمس) في الشتاء فقط، وفي الصيف ضوء ساطع غير مباشر. يمكنها العيش في درجة حرارة 8 درجات مئوية شتاءً، وتتحمل ارتفاع درجات الحرارة إلى درجة حرارة الغرفة صيفاً، تروى النبتة بشكل معتدل أو أقل من المعتدل، كونها غير محبة للرطوبة، ويفضل بقاء تربتها خلال الشتاء شبه جافة، وتسمد خلال الصيف بسماد سائل مخفف. تمر بفترة سكون خلال الشتاء وتحت درجة حرارة تتراوح بين 7 إلى 10 درجات مئوية، ويفضل تغيير أصيص النبتة سنوياً خلال فصل الربيع ولا تسقى النبتة بعد النقل لعدة أيام؛ تجنباً لفساد جذورها بالعفن."
               , overView:" نبتة كراسولا اسمها العلمي Crassula ovata. هذه النبتة من النباتات العصارية، وجنس الكراسولا يشمل ما يقارب 300 نوع، تختلف في الحجم والشكل واللون، وهي من النباتات سهلة الرعاية، وكذلك يمكن إكثارها بسهولة، وقد تجد هذه النبتة بمسميات أخرى مثل: C.portulacea أو C.argentea. شكل النبتة يشبه الشجرة الكبيرة، ومع الرعاية الجيدة يمكن أن يصل ارتفاع النبات إلى 1 متر."),
    
        
        Table( title: "لانتانا", imageURL: "1", careWith: " يسقى يومياً خلال الصيف، ويقلل في الشتاء، يسمد مرة واحدة في السنة، يمكن تقليمه خلال الخريف قبل دخول الشتاء لتشجيع التزهير، ويشكل حسب الرغبة، ويستحسن تنظيف المناطق أسفل وحول الشجيرة من بقايا النبات والبذور حتى لا تحدث نموات كثيفة للنبات فيكون شكلها غير منتظم وفوضوي إلى حدٍ ما، ولكي لا تكون بيئة لتجمع الحشرات الضارة، وتكرر هذه العملية ثلاث أو أربع مرات سنوياً، ويفضل في كل مرة تقليب التربة (عزقها) بأمشاط زراعية."  ,overView: "لانتانا (Lantana) هي شجيرة يمكن أن تصل لارتفاع 3 أمتار، تربى لأغراض عدة منها: سياج نباتي، رائحتها العبقة، وأزهارها الجميلة التي تكون عبارة عن مجموعة من الأزهار على شكل قبة يصل عددها إلى 30 زهرة متعددة الألوان، يوجد منها عدة أنواع (كامارا، ومنه عدة أصناف منها: “نيفيا، وميستا، وموتابيليس، وكروسيا، وسانجونيا” وسيللويانا، وسالفيفوليا) ومنها نوع متقزم لا يتجاوز ارتفاعه 1.5 متر فقط، موطنه الأصلي المناطق الحارة من أمريكا، تتحمل الأجواء الحارة والقاسية؛ لذلك تنجح زراعتها في المملكة العربية السعودية (نوع كامارا)، وهو ذو نموات متشابكة ولبعض أنواعه أشواك؛ لذلك فهو يصلح كسياج منيع، وللنبات استخدامات علاجية منها علاج التيتانوس والروماتيزم والملاريا، والإسعافات الأولية ضد لدغة الثعبان.ومن عجائب هذا النبات (صنف موتابيليس) أن الأزهار الخارجية لونها أبيض عند تفتحها ثم تتحول إلى اللون الأبيض المصفر، ثم إلى اللون الوردي، وهكذا تتدرج بأوان متعددة وذلك خلال أقل من يوم! والنبات يكاد يكون مزهراً طوال العام."),
        Table( title: " ريحان", imageURL: "2", careWith: "تقلم رؤوس الأفرع الطويلة للنبات حديث الغرس؛ كي ننشط نمو المجموع الجذري، وكذلك تقطع الزهور التي تظهر؛ كي نشجع النمو الخضري (الأفرع والأوراق). تنظف التربة من الأعشاب الضارة، وتسمد إلى ثلاث مرات في السنة. والري يكون مرتين في اليوم صيفاً ومرة كل يومين شتاءً ويحكم عدد مرات الري مدى رطوبة التربة حيث لا بد من بقائها رطبة.",
               overView: "نبات الريحان Ocimum basilicum شجيرة عطرية فواحة الرائحة، يصل ارتفاعها إلى حوالي المتر، توجد أزهارها في نورات عنقودية. ينتمي النبات للفصيلة الشفوية، يزرع لأغراض الزينة ولرائحته العطرة المميزة. وله استخدامات طبية أخرى ويتميز بتحمله لحرارة الجو لذلك يناسب زراعته في المناطق الصحراوية والجافة.ويعتبر هذا الريحان هو الريحان العادي غير المأكول، حيث أن الريحان المأكول يختلف من ناحية اللون، والشكل، وسمك الورقة. فريحان الأكل ورقته خفيفة غير سميكة لونها يميل للأخضر الفاتح والريحان العادي لونه غامق. ورقة ريحان الأكل ناعمة أما الريحان العادي ورقته خشنة وشكلها يميل للاستطالة في حين الريحان المأكول تميل للاستدارة."),
        Table( title: " بوتس بيكتوس" , imageURL: "3", careWith:" يَحتاج نَبَات البوتس بيكتوس إِلى إِضاءة سَاطِعة غَير مُبَاشرَة عن طريق وَضع النّبَات بِالْقرب مِن النّافذة أو استخدام مَصابِيح الإنارة الصّناعيّة، حَيث يُؤدّي انخِفاض مُستويات الإضاءة إِلى زِيادة إِنتَاج صِبغَة الكلوروفيل في عَمَليّة البنَاء اَلضوئِي؛ مِمّا يُؤثّر على تَبايُن لَون الأوراق وإعادة اللّون الأخضر لِلْأوراق بِشَكل كُلّي. يُروى النبات بانتظام مرّة أسبوعيًّا عندما يكون السطح العلوي للتربة جافًا، ويكون الرّي بشكل منتظم ومتكرر في فصل الصّيف أكثر من فصل الشتاء، ويؤدي الريّ الزائد إلى الإصابة بالعديد من الأمراض الفطريّة مثل عفن الجُذور؛ لِذَلك يَجِب أن يَزرَع فِي تُربَة مُتماسكة جَيدَة التّصريف لِلحفَاظ على نُموه بِالشّكل السلِيم. يُعَد بوتس بيكتوس نَبَاتً استوائيًّا مُحبًّا لِلرطوبة العالية، حَيث يَنمُو فِي رُطُوبَة تتراوَح ما بين 50% – 70%، وَدرجَة حَرارَة تتراوَح ما بين 15 – 23 دَرجَة مِئويّة، ويسمّد بِمعدّل مَرّة شهريًّا بِاستخدام الأسمدة المتوازنة القابلة لِلذّوبان فِي الماء وتحديدًا فِي مَوسِم النّمو في فَصلِي الربِيع والصّيْف. يُقلّم النّبَات من وَقت لِآخر لِلْحفَاظ عليه مُفعمًا بِالحيويّة وتحسِين المظهر الجماليّ، والتّخلّص من الأوراق والفروع التّالفة أو الميّتة ",
               overView: "نبات بوتس بيكتوس، اسمه العلمي Scindapsus pictus ‘Silvery Ann’، وهُو أحد نباتَات الزّينة المنزليّة المتسلّقة دَائِمة اَلخُضرة الذِي يَتَميّز بِأوراقه الخضراء العريضة غَير اللّامعة المموّجة بِشَكل غَير مُنتَظِم باللّون الفضّي، ومظهَره الجذّاب حَيث يَتَراوَح ارتفاعه في مَرحَلة النّضج ما بين 1.5 – 3 متر في حين يصل انتشاره ما بين 50 سم- 1 متر حيث ينمو فِي بُطء نِسبِي، ولا يُزهر إلا نادرًا خلال فَصل الصّيف. يُسَاهِم فِي تَنقِية الْهَواء وزيادة الرطُوبَة الجوية من خِلَال عَمَليّة النتح، ويمتَاز بِسهولة العناية وعدَم الحاجة إِلى الرّعاية المستمرّة والْكثيفة، ويُضفِي جمالاً على المساحات التِي يُوضَع فِيهَا، ويساعد على مَلْء الفراغات؛ ممّا يجعله خِيارًا مِثالِيًّا للْمبتدئين في رعاية النّباتات، وإضافة مُذهِلة للْحدائق المنزليّة وغرَف المعيشة والْمكاتب."),
        Table( title: " الياسمين", imageURL: "4", careWith: "يفضل أن يسمد بانتظام آخر فصل الشتاء وبدايات الصيف، وينتظم بالري أيضاً، ويجتاج للتقليم المستمر؛ لأنه سريع النمو، ويكون النبات في حال أفضل في الأماكن ذات الظل الخفيف. محب للتربة العضوية ذات الصرف الجيد. لاحظ أن التقليم يقلل من الأزهار ولذلك يميل البعض لتركه ينمو حراً سواءً كانت الشجرة فردية أو مزروعة كسياج وذلك للتمتع بعبق الأزهار القوي الناتج عن كثرة وكثافة الأزهار، ويفضل أن يزرع بعيداً عن مناطق التيارات الهوائية حارةً أو باردة." ,overView: " ياسمين مراية كما يسمى في المشاتل أو الياسمين البرتقالي أو الياسمين الأفريقي واسمه العلمي Murraya paniculata. وهو شجيرة دائمة الخضرة، تصل لارتفاع 3 متر تقريباً. مزهرة ولأزهارها عبق جميل تزداد رائحته في المساء، وسمي بذلك لتشابه أزهاره مع أزهار البرتقال، لذلك يسميه الغربيون ياسمين برتقال، وموطنه الهند وجنوب شرق آسيا، كما أن أوراقه ذات رائحة عطرية أيضاً، وتظهر أزهاره من مايو إلى سبتمبر، ثماره وأوراقه سامة غير صالحة للأكل، أزهاره تجذب النحل، ويمكن استخدامها للزينة وديكور المنزل، وتدخل في صناعة العطور ومواد التجميل."),
        Table( title: " الشامروكس الأرجواني",  imageURL: "5" ,careWith: " يحتاج الشامروكس الأرجواني إِلى إِضاءة ساطعة غير مُباشرة عن طريق وَضع النّبتة بِالْقرب من النّافذة أو استخدام مَصابِيح الإنارة الصّناعيّة، حَيث يُؤدّي انخفاض مُستويات الإضاءة إِلى زيادة طول السّيقان ونموها بشكل غير صحّي وسليم، كما يؤدّي التعرّض المستمرّ لأشعّة الشّمس إلى احتراق الأوراق. تُروى النّبتة بانتظام عندما يكون السّطح العلوي للتُّربة جافًا في فصليّ الربيع والصّيف أكثر من فصليّ الخريف والشّتاء حيثُ يؤدي الرّي الزّائد في جعل السّيقان غضّة والأوراق مصفرّة والإصابة بالعديد من الأمراض الفطريّة مثل عفن الجُذور، إضافة إلى ذلك من الممكن أن يؤدّي الإفراط في عمليّة الريّ إلى موت النّبتة؛ لِذَلك يَجِب أن تُزرع في تُربة خفيفة جيّدة التّصريف غنيّة بالمواد العضويّة قادرة على الاحتفاظ بالجذور في حالة صحية لمدّة طويلة. تُعدّ نبتة الشامروكس الأرجواني من النّباتات التي تنمو وتزدهر في مستويات رطوبة متوسطة تتراوَح ما بين 30-60% ودرجَة حرارة تتراوَح ما بين 15 – 23 دَرجَة مِئويّة، كما أن مستويات الرُّطوبة المنخفضة تؤدّي إلى ذبول الأوراق وانكماش الحواف، ويؤدي الارتفاع أو الانخفاض في درجات الحرارة إلى دخول النّبتة في طور السكون وتساقط أوراقها. تُقلّم النّبتة من وَقت لِآخر للحفَاظ عليها مُفعمة بِالحيويّة وللتّخلّص من الأوراق والفروع التّالفة أو الميّتة. تُسمّد النّبتة بِمعدّل مَرّة إلى مرّتين شهريًّا في مَوسِم النّمو في فَصليّ الربيع والصّيْف باستخدام الأسمدة المتوازنة القابلة للذّوبان فِي الماء مع اتباع الإرشادات الموصى بها للحصول على أفضل النتائج."
               ,overView: "نبتة الشامروكس الأرجواني، اسمها العلمي Oxalis triangularis، وهي إحدى نباتَات الزّينة المنزليّة العشبيّة التي يعود موطنها إلى أمريكا الجنوبيّة، تمتاز بِأوراقها الثُّلاثيّة حيثُ تتكوّن كُلّ ورقة من ثلاث وريْقات مثلثة الشّكل تُشبه شكل الفراشة تتفتّح أوراقها في النّهار وتُغلق في اللّيل، يتدرّج لونها من اللّون الأرجوانيّ الدّاكن إلى الفاتح، وتمتاز بأزهارها الجذّابة التي تتّباين بين اللّونين الأبيض والوردي، خُماسيّة البتلات، تتألّق الأزهار بارتفاع يتراوح ما بين 3-5 سم فوق الأوراق الداكنة ممّا يُضفي جاذبية ورونقًا على المظهر العام للنّبتة، يتَراوَح ارتفاع النّبتة في مرحلة النّضج ما بين 15- 30 سم في حين يصل عرضها ما بين 30 – 60 سم. تُساهم الشامروكس الأرجواني في تنقية الهواء وزيادة نسبة الأكسجين وتُضفِي جمالاً على المساحات والأماكن التي تُوضَع فيها، وتُساعد على ملْء الفراغات؛ ممّا يجعلها خيارًا مِثالِيًّا، وإضافة مُذهلة للْحدائق المنزليّة وغُرف المعيشة والمكاتب، لكنها تُعدُّ نبتة سامّة في حال تم تناولها لذلك يُفضّل وضعها بعيدًا عن مُتناول الأطفال والحيوانات الأليفة.")
    ]
    let tables1 : [Table] = [
        Table( title: "تاج الشوك", imageURL: "6", careWith: "لا يحتاج إلى عناية كبيرة، يمكنه تحمل درجة الحرارة إلى 12 درجة مئوية، مع كونه نبات عصاري إلا أنه يحتاج رطوبة عالية خاصةً في الربيع والصيف حيث تكون الحرارة عالية، يتحمل أشعة الشمس المباشرة ولكن ليس في الصيف، ومحب للضوء الساطع ولأشعة الشمس المباشرة شتاءً، والري يكون غزيراً عدا فصل الشتاء فيقلل، والتسميد يتم صيفاً، وتقلم أفرع النبات ليبقى منها ما لا يقل عن 10 سم، وذلك بعد انتهاء موسم التزهير، ولو رغبت نقل النبات لأصيص آخر فإن أفضل وقت هو الربيع ويروى بعد النقل بغزارة ويسمد كي يزدهر النبات، ويمكن تشجيع النبات على التزهير بحجب الضوء عنه ليلاً باستخدام كيس أسود طوال الليل ولمدة 14ساعة ويزال بعدها، وتكرر العملية لمدة شهرين تقريباً، ثم يزال الكيس ويترك النبات ينمو بشكل طبيعي فهذا من شأنه تشجيع النبات على التزهير خلال الشتاء."
         ,overView: "نبات صبار تاج الشوك أو الإيفوربيا ميلي (Euphorbia milii) توجد منه أنواع كثيرة قد يصل عددها إلى 2000 نوع، وتختلف هذه الأنواع من حيث كونها حوليات أو شجيرات أو شديدة التحمل، ونباتنا الذي نتحدث عنه شجيرة عصارية سيقانها خشبية ذات أشواك كثيرة وتحمل السيقان أزهار صغار تحاط بقنابة حمراء جميلة، ويزهر من الربيع حتى نصف الصيف، يظهر من النبات عند قطعه عصارة سامة قد تسبب التهاباً في الجلد عند ملامسته وأحيانا تجد بعض الباعة يسمونه باسمه القديم (E.splendens)."),
               
        Table( title: "النارنج", imageURL: "7", careWith: "يتحمل النبات ارتفاع درجات الحرارة العالية إذا توافرت رطوبة كافية في التربة. لا تؤثر في برتقال إشبيلية فترات الصقيع السريعة بشدة في النباتات القوية في نموها، ولكن قد تتضرر الأوراق الطرية والغصينات غير المتخشبة. يتحمل النبات التقليم الجائر ويمكنه كذلك استعادة النمو بعد القطع. يمكن إكثار برتقال إشبيلية من البذور للأغراض التنسيقية، وبالتطعيم إذا كان الغرض من ذلك الاحتفاظ ببعض الصفات المحصولية في البساتين.", overView: "أشجار برتقال إشبيلية الحامض متوسطة الارتفاع، يصل ارتفاعها كحد أقصى إلى نحو 10 أمتار وهي ذات تاج مستدير. موطنها الأصلي شمال شرقي الهند وبنجلاديش وماينمار. أدخلت الشجرة منذ أكثر من 1000 عام إلى حوض البحر المتوسط واشتهرت هناك حيث أطلق عليها اسم برتقال إشبيلية تخليداً لمدينة إشبيلية الإسبانية. تنمو جيداً في مدينة الرياض وتعطي أزهارها رائحة عطرية ذكية لاتجارى، تضل لعدة أسابيع خلال فصل الربيع. وتعد إحدى المكونات المفضلة في الحدائق. تحمل الغصينات اللامعة ذات الأشواك أوارقاً خضراء فاقعة اللون تطلق رائحة عطرية عند خدشها. تصل أبعاد الورقة إلى نحو 12 × 7 سم. الأزهار بيضاء تظهر في فصل الربيع ويمكن قطفها لتقطير واستخلاص نوع من العطور. تزرع بعض أصناف برتقال إشبيلية لإنتاج الزيوت الأساسية التي تسوق تحت اسم “زيت نيرولي”. بعد تلقيح الأزهار تعقد الثمار وتظهر بلون برتقالي مشوب بصفرة قد يصل قطرها 8 سم"),
        Table( title: "الكانا", imageURL: "8", careWith: "تعرضها للشمس مهم بالإضافة إلى أن وجودها في الظل يساعد على قوة النمو، وقلة الإضاءة تؤثر على التزهير. ويمكن إكثارها بالبذور وكذلك تجزئة الريزومة المتشحمة وسيلة لتكاثر الأصناف الزراعية، والنبات مقاوم للصقيع، كما أن التربة عالية القلوية تؤثر على الأوراق. ويمكن أن يستخدم النبات في زراعة الأحواض والأصص، ويزرع بوصفه سياجاً حول الحديقة، ويجب أن تزرع النباتات على مسافات 50 سم، ثم تقليب التربة يساعد على المحافظة على الرطوبة، وزراعتها في مجاميع تبدو أفضل من الناحية الجمالية من زراعتها بصورة واسعه متصلة. والرياح القوية تؤثر على الأوراق لذا فإن الأماكن المحمية هي الأفضل للنبات خاصة في الرياض؛ حيث يشكل تعرضها للرياح مشكلة في مظهر النبات. والأزهار الميتة تقلم لتحفيز ظهور أزهار أخرى. كما يجب أن تزال الأوراق المتضررة من القاعدة لتحفيز نمو جديد. ", overView: "نبات الكانا عبارة عن نبات عشبي معمر جميل، لأزهاره ألوان متعددة ما بين الأحمر والبرتقالي والأصفر، ويحتاج النبات إلى تربة غنية بالمخصبات وعالية الرطوبة، وموطنه المناطق الاستوائية الرطبة حيث يوجد أكثر من 30 صنفاً من الكانا، وموطنه الأصلي وسط أمريكا وجنوبها. وأمكن استنبات أصناف جديدة جذابة خاصة ذات الأوراق السوداء والأزهار الحمراء الغامقة، وهي تعطي أزهاراً طوال العام، والأوراق جذابة كبيرة وواسعة بيضاوية الشكل لها عروق على ساق ملساء، والجذور متدرنة ريزومية."),
        Table( title: "إبرة الراعي", imageURL: "9", careWith: " نبات خارجي في الأساس ولكن يمكن تربيته داخلياً بشرط تعريضه لأشعة الشمس المباشرة أول النهار صيفاً أو وسط النهار شتاءً لفترة تقدر بأربع ساعات، وعلى الرغم من أنه خارجي لكنه في بيئتنا الصحراوية يحتاج إلى مكان محمي من شمس الظهيرة الحارقة صيفاً، يتحمل جفاف الهواء وغير محب للرطوبة، الاعتدال في الري من الربيع إلى الخريف ويقلل في الشتاء، وتعطى النبتة السماد خلال نفس فترة الري على فترات منتظمة مرةً في الشهر، تزال الأزهار الذابلة بانتظام وتقلم الأطراف النامية للنباتات الصغيرة للحصول على نمو خضري كثيف يظهر النبات مكتنزاً، كما تقلم الأغصان الطويلة لتقصيرها خلال فصل الربيع، وذلك لأن سيقانها هشة قد تتكسر مع زيادة الطول." ,overView: "(Pelargonium) شجيرة عطرية تنتمي إلى الفصيلة الغرنوقية (إبرة الراعي) ويسمى في بعض المناطق العربية باسم (خبيزة) لتشابه أوراقه مع أوراق نبات الخبيز المعروف، كما ويسمى في مناطق أخرى باسم (عطرة) نظراً للروائح العطرية المنبعثة من أوراقه، ويسمى أيضاً اسماً مشتركاً في اللغة العربية والانجليزية هو: جيرانيوم، أو جيرانيوم عطري، مع العلم أنه يختلف عن الجيرانيوم حيث كل منهما ينتمي إلى جنس مختلف ولكنهما يتبعان نفس الفصيلة.موطن أغلب أنواعه من جنوب أفريقيا والقليل منها في استراليا ونيوزيلاندا، ويضم هذا النبات حوالي 250 نوع منها العصاري الزاحف والحولي ودائم الخضرة، وهو نبات نموه سريع ويصل ارتفاعه إلى حوالي 60 سم، منه أنواع تلفت الانتباه بأزهارها، وأنواع تشتهر بأوراقها رغم أن لها أزهار جميلة.")
    ]
    let tables2 : [Table] = [
        Table( title: "Hello, World!", imageURL: "7", careWith: "Lantana | كنتيا", overView: "This is Latena product"),
        Table( title: "Hello, World!", imageURL: "3", careWith: "Lantana | كنتيا", overView: "This is Latena product"),
        Table( title: "Hello, World!", imageURL: "7", careWith: "Lantana | كنتيا", overView: "This is Latena product"),
        Table( title: "Hello, World!", imageURL: "3", careWith: "Lantana | كنتيا", overView: "This is Latena product"),
        Table( title: "Hello, World!", imageURL: "7", careWith: "Lantana | كنتيا", overView: "This is Latena product"),
        Table( title: "Hello, World!", imageURL: "3", careWith: "Lantana | كنتيا", overView: "This is Latena product")
    ]
    let tables3 : [Table] = [
        Table( title: "الكانا", imageURL: "0", careWith: "Lantana | كنتيا", overView: "This is Latena product"),
        Table( title: "Hello, World!", imageURL: "4", careWith: "Lantana | كنتيا", overView: "This is Latena product"),
        Table( title: "Hello, World!", imageURL: "3", careWith: "Lantana | كنتيا", overView: "This is Latena product")
    ]
    let tables4 : [Table] = [
        Table( title: "Hello, World!", imageURL: "0", careWith: "Lantana | كنتيا", overView: "This is Latena product"),
        Table( title: "Hello, World!", imageURL: "1", careWith: "Lantana | كنتيا", overView: "This is Latena product"),
        Table( title: "Hello, World!", imageURL: "2", careWith: "Lantana | كنتيا", overView: "This is Latena product"),
        Table( title: "Hello, World!", imageURL: "3", careWith: "Lantana | كنتيا", overView: "This is Latena product")
    ]
    let tables5 : [Table] = [
        Table( title: "Hello, World!", imageURL: "0", careWith: "Lantana | كنتيا", overView: "This is Latena product"),
        Table( title: "Hello, World!", imageURL: "4", careWith: "Lantana | كنتيا", overView: "This is Latena product"),
        Table( title: "Hello, World!", imageURL: "3", careWith: "Lantana | كنتيا", overView: "This is Latena product"),
        Table( title: "Hello, World!", imageURL: "2", careWith: "Lantana | كنتيا", overView: "This is Latena product"),
        Table( title: "Hello, World!", imageURL: "1", careWith: "Lantana | كنتيا", overView: "This is Latena product")
    ]
    
    
    var body: some View {
        NavigationView{
            VStack{
                if selected == 0 { //
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack(spacing: 10){
                            ForEach(boxes , id: \.id) { box in
                                BoxView(selectedBtn: self.$selected, box: box)
                            }
                        }
                    }.padding(20)
                        PlantsListCategory(table: tables)
                } //
                
                if selected == 1 { //
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack(spacing: 10){
                            ForEach(boxes , id: \.id) { box in
                                BoxView(selectedBtn: self.$selected, box: box)
                            }
                        }
                    }.padding(20)
                    
                    PlantsListCategory(table: tables1)
                } //
                
                if selected == 2 { //
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack(spacing: 10){
                            ForEach(boxes , id: \.id) { box in
                                BoxView(selectedBtn: self.$selected, box: box)
                            }
                        }
                    }.padding(20)
                        PlantsListCategory(table: tables2)
                } //
                
                if selected == 3 { //
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack(spacing: 10){
                            ForEach(boxes , id: \.id) { box in
                                BoxView(selectedBtn: self.$selected, box: box)
                            }
                        }
                    }.padding(20)
                        PlantsListCategory(table: tables3)
                } //
                
                if selected == 4 { //
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack(spacing: 10){
                            ForEach(boxes , id: \.id) { box in
                                BoxView(selectedBtn: self.$selected, box: box)
                            }
                        }
                    }.padding(20)
                        PlantsListCategory(table: tables4)
                } //
                
                if selected == 5 { //
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack(spacing: 10){
                            ForEach(boxes , id: \.id) { box in
                                BoxView(selectedBtn: self.$selected, box: box)
                            }
                        }
                    }.padding(20)
                        PlantsListCategory(table: tables5)
                } //
                
                
            }
            .toolbar(content: {
                ToolbarItem(content: {
                    Text("تعرف علي مواقع استخدام النباتات")
                        .font(.title2).fontWeight(.bold)
                })})
            .background(.white)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}