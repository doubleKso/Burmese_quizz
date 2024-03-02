class NavigateQuestion {
  final int id;
  final String text;
  final List<NavigationsOption> options;
  bool isLocked;
  NavigationsOption? selectedWiidgetOption;
  NavigationsOption? correctAnswer;

  NavigateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  NavigateQuestion copyWith() {
    return NavigateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              NavigationsOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class NavigationsOption {
  final String text;
  final bool isCorrect;

  const NavigationsOption({
    required this.text,
    required this.isCorrect,
  });
}

final lOCQuestionsList = [
  NavigateQuestion(
    text: "ရာဇကုမာရ်ကျောက်စာကို မည်သို့ခေါ်ဆိုကြသေးသနည်း?",
    options: [
      const NavigationsOption(text: "သိင်္ဃသူသမီး", isCorrect: false),
      const NavigationsOption(text: "စောလူးမင်း", isCorrect: false),
      const NavigationsOption(text: "မြစေတီ", isCorrect: true),
      const NavigationsOption(text: "အနော်ရထာ", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const NavigationsOption(text: "မြစေတီ", isCorrect: true),
  ),
  NavigateQuestion(
    text: "နာမည်ကျော်'စိတ်'အမည်ရှိ၀တ္တုကို မည်သူရေးသားခဲ့သနည်း?",
    options: [
      const NavigationsOption(text: "လူထုဒေါ်အမာ", isCorrect: false),
      const NavigationsOption(text: "ဂျာနယ်ကျော်မမလေး", isCorrect: true),
      const NavigationsOption(text: "ဒေါခင်မျိုးချစ်", isCorrect: false),
      const NavigationsOption(text: "ဂျူး", isCorrect: false),
    ],
    id: 1,
    correctAnswer:
        const NavigationsOption(text: "ဂျာနယ်ကျော်မမလေး", isCorrect: true),
  ),
  NavigateQuestion(
    text: "တေးသံရှင် ခိုင်ထူး၏ကျော်ကြားခဲ့သော သီချင်းအမည်ကိုရွေးပါ?",
    options: [
      const NavigationsOption(text: "စစ်ကိုင်းလမ်း", isCorrect: true),
      const NavigationsOption(text: "ပုဂံလမ်း", isCorrect: false),
      const NavigationsOption(text: "ခယောင်းလမ်း", isCorrect: false),
      const NavigationsOption(text: "မေမြို့လမ်း", isCorrect: false),
    ],
    id: 2,
    correctAnswer:
        const NavigationsOption(text: "စစ်ကိုင်းလမ်း", isCorrect: true),
  ),

  NavigateQuestion(
    text: "ဟာသစာရေးဆရာကြီးတစ်ဦး၏ အမည်ကိုရွေးပါ?",
    options: [
      const NavigationsOption(text: "အီကြာကွေး", isCorrect: true),
      const NavigationsOption(text: "ပလာတာ", isCorrect: false),
      const NavigationsOption(text: "စမူဆာ", isCorrect: false),
      const NavigationsOption(text: "နံပြား", isCorrect: false),
    ],
    id: 3,
    correctAnswer: const NavigationsOption(text: "အီကြာကွေး", isCorrect: true),
  ),
  // other 4
  NavigateQuestion(
    text: "နွားနှစ်ကောင်အတွဲကို မည်သို့ရေတွက်မည်နည်း?",
    options: [
      const NavigationsOption(text: "တစ်တွဲ", isCorrect: false),
      const NavigationsOption(text: "တစ်စုံ", isCorrect: false),
      const NavigationsOption(text: "တစ်ရှဉ်း", isCorrect: true),
    ],
    id: 4,
    correctAnswer: const NavigationsOption(
      text: "တစ်ရှဉ်း",
      isCorrect: true,
    ),
  ),
  NavigateQuestion(
    text:
        "ဦးသာဓုသည် ဦးသုမောင်၏ဖခင်ဖြစ်ပြီး ဦးရူပနှင့်ဦးသုမောင်မှာညီအစ်ကိုတော်စပ်၍ ဖိုးသောကြာသည် ဦးသုမောင်၏သားဖြစ်လျှင် ဦးသာဓုနှင့် ဦးရူပမှာ မည်သို့တော်စပ်သနည်း?",
    options: [
      const NavigationsOption(text: "သားအဖ", isCorrect: true),
      const NavigationsOption(text: "တူအရီး", isCorrect: false),
      const NavigationsOption(text: "ညီအစ်ကို", isCorrect: false),
      const NavigationsOption(text: "ယောက်ဖ", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const NavigationsOption(text: "သားအဖ", isCorrect: true),
  ),

  NavigateQuestion(
    text:
        "မြန်မာနိုင်ငံတွင်နေလှမ်းဆားလုပ်ငန်းကိုမည်သည့်ဒေသတွင်အများဆုံးလုပ်ကိုင်သနည်း?",
    options: [
      const NavigationsOption(text: "ဘုတ်ပြင်း", isCorrect: false),
      const NavigationsOption(text: "ဟိုင်းကြီး", isCorrect: false),
      const NavigationsOption(text: "လပွတ်တာ", isCorrect: false),
      const NavigationsOption(text: "ပင", isCorrect: true),
    ],
    id: 6,
    correctAnswer: const NavigationsOption(text: "ပင", isCorrect: true),
  ),
  NavigateQuestion(
    text:
        "တက်လေးစင်းနှင့်အပြင်လှော် မယ်တော်ရှင်မ ပေါင်းထဲက” စကားထာသည် မည်သည်ကိုဆိုလိုသနည်း?",
    options: [
      const NavigationsOption(text: "လိပ်", isCorrect: true),
      const NavigationsOption(text: "ဝက်", isCorrect: false),
      const NavigationsOption(text: "ခရု", isCorrect: false),
      const NavigationsOption(text: "ပက်ကျိ", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const NavigationsOption(text: "လိပ်", isCorrect: true),
  ),

  NavigateQuestion(
    text: "အပင်၏သက်တမ်းတလျှောက် တွင်တစ်ကြိမ်သာအသီးသီးသော အပင်ကိုရွေးပါ?",
    options: [
      const NavigationsOption(text: "ထန်းပင်", isCorrect: false),
      const NavigationsOption(text: "အုန်းပင်", isCorrect: false),
      const NavigationsOption(text: "ပေပင်", isCorrect: true),
      const NavigationsOption(text: "မန်ကျည်းပင်", isCorrect: false),
    ],
    id: 8,
    correctAnswer: const NavigationsOption(text: "ပေပင်", isCorrect: true),
  ),
  NavigateQuestion(
    text: "မည်သည်က 'fast food' အသင့်စား အစားအစာဖြစ်သနည်း?",
    options: [
      const NavigationsOption(text: "ကြက်ကုန်းဘောင်", isCorrect: false),
      const NavigationsOption(text: "ကြက်ချိုချဉ်", isCorrect: false),
      const NavigationsOption(text: "ကြက်ကြော်", isCorrect: true),
      const NavigationsOption(text: "ကြက်စပ်", isCorrect: false),
    ],
    id: 9,
    correctAnswer: const NavigationsOption(text: "ကြက်ကြော်", isCorrect: true),
  ),
  NavigateQuestion(
    text: "တောင်ကွဲစေတီသည် မည်သည့်ပြည်နယ်တွင် ရှိသနည်း?",
    options: [
      const NavigationsOption(text: "ကချင်", isCorrect: false),
      const NavigationsOption(text: "ကရင်", isCorrect: false),
      const NavigationsOption(text: "ကယား", isCorrect: true),
      const NavigationsOption(text: "ရှမ်း", isCorrect: false),
    ],
    id: 10,
    correctAnswer: const NavigationsOption(text: "ကယား", isCorrect: true),
  ),
  NavigateQuestion(
    text: "မိုးကုတ်မြို့တွင် တည်ရှိသော တောင်၏အမည်ကို ရွေးပါ?",
    options: [
      const NavigationsOption(text: "မိန်းမရဲသခင်မ", isCorrect: false),
      const NavigationsOption(text: "မြစိမ်း", isCorrect: false),
      const NavigationsOption(text: "ဒေါ်နန်းကြည့်", isCorrect: true),
      const NavigationsOption(text: "ဒက္ခိဏ", isCorrect: false),
    ],
    id: 11,
    correctAnswer:
        const NavigationsOption(text: "ဒေါ်နန်းကြည့်", isCorrect: true),
  ),
];
