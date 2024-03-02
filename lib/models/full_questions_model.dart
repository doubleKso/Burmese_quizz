class StateQuestion {
  final int id;
  final String text;
  final List<StateOption> options;
  bool isLocked;
  StateOption? selectedWiidgetOption;
  StateOption? correctAnswer;

  StateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });
  StateQuestion copyWith() {
    return StateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              StateOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class StateOption {
  final String text;
  final bool isCorrect;

  const StateOption({
    required this.text,
    required this.isCorrect,
  });
}

final fULLQuestionsList = [
  StateQuestion(
    text: "ပိုဒ်စုံရတုတွင်အပိုဒ်မည်မျှပါဝင်သနည်း?",
    options: [
      const StateOption(text: "၆", isCorrect: false),
      const StateOption(text: "၄", isCorrect: false),
      const StateOption(text: "၃", isCorrect: true),
      const StateOption(text: "၅", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const StateOption(text: "၃", isCorrect: true),
  ),
  StateQuestion(
    text: "မြန်မာ့ပထမဆုံး အင်ဂျင်နီယာဘွဲ့ ရရှိခဲ့သူကိုရွေးပါ?",
    options: [
      const StateOption(text: "မက္ခရာမင်းသား", isCorrect: false),
      const StateOption(text: "ဖန်ချက်ဝင်ဦးရွှေအိုး", isCorrect: true),
      const StateOption(text: "ကနောင်မင်းသား", isCorrect: false),
      const StateOption(text: "ဦးတက်ဝန်", isCorrect: false),
    ],
    id: 1,
    correctAnswer:
        const StateOption(text: "ဖန်ချက်ဝင်ဦးရွှေအိုး", isCorrect: true),
  ),
  StateQuestion(
    text: "မည်သည်သည် ကင်စားလျှင် အရသာရှိသော ငါးအမည်ဖြစ်သနည်း?",
    options: [
      const StateOption(text: "ထောပတ်", isCorrect: true),
      const StateOption(text: "ဒိန်ချဉ်", isCorrect: false),
      const StateOption(text: "မလိုင်", isCorrect: false),
      const StateOption(text: "နွားနို့", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const StateOption(text: "ထောပတ်", isCorrect: true),
  ),

  StateQuestion(
    text:
        "ဗြိတိသျှကိုလိုနီခေတ်တွင် မည်သည့်ရေတံခွန်ကို Hampshire Falls ဟုခေါ်ခဲ့ကြသနည်း?",
    options: [
      const StateOption(text: "ပွဲကောက်", isCorrect: true),
      const StateOption(text: "ကျိုင်းတုံ", isCorrect: false),
      const StateOption(text: "ဘုံတလာ", isCorrect: false),
      const StateOption(text: "ချီလီ", isCorrect: false),
    ],
    id: 3,
    correctAnswer: const StateOption(text: "ပွဲကောက်", isCorrect: true),
  ),
  // other 4
  StateQuestion(
    text: "ရည်းစားဟောင်းကို မည်သို့တင်စားခေါ်ဝေါ်ကြသနည်း?",
    options: [
      const StateOption(text: "New Flame", isCorrect: false),
      const StateOption(text: "Eternal Flame", isCorrect: false),
      const StateOption(text: "Infinity Flame", isCorrect: false),
      const StateOption(text: "Old Flame", isCorrect: true),
    ],
    id: 4,
    correctAnswer: const StateOption(text: "Old Flame", isCorrect: true),
  ),
  StateQuestion(
    text: "'ကျွန်နင်းပြားစိတ်' ဟူသောစကားသည် မည်သည့်လင်္ကာမြောက်ဖြစ်သနည်း?",
    options: [
      const StateOption(text: "ဝင်္ကဝုတိ", isCorrect: true),
      const StateOption(text: "ဥပမာ", isCorrect: false),
      const StateOption(text: "ရူပက", isCorrect: false),
      const StateOption(text: "အတိသယဝုတိ", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const StateOption(text: "ဝင်္ကဝုတိ", isCorrect: true),
  ),

  StateQuestion(
    text: "အသံမထွက်နိုင်သော သတ္တဝါကိုရွှေးပါ?",
    options: [
      const StateOption(text: "ခွေးအ", isCorrect: false),
      const StateOption(text: "ရေမြင်း", isCorrect: false),
      const StateOption(text: "ဆင်", isCorrect: false),
      const StateOption(text: "သစ်ကုလားအုတ်", isCorrect: true),
    ],
    id: 6,
    correctAnswer: const StateOption(text: "သစ်ကုလားအုတ်", isCorrect: true),
  ),
  StateQuestion(
    text: "အကြေးခွံမရှိသည့် ငါးကိုရွေးပါ?",
    options: [
      const StateOption(text: "ငါးရှဉ့်", isCorrect: true),
      const StateOption(text: "ငါးခူ", isCorrect: false),
      const StateOption(text: "ငါးကြင်း", isCorrect: false),
      const StateOption(text: "ငါးဖယ်", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const StateOption(text: "ငါးရှဉ့်", isCorrect: true),
  ),

  StateQuestion(
    text: "ဂိမှာန်ဆိုသည်မှာ မည်သည့်ရာသီကို ရည်ညွှန်းသနည်း?",
    options: [
      const StateOption(text: "ဆောင်းဦးရာသီ", isCorrect: false),
      const StateOption(text: "မိုးရာသီ", isCorrect: false),
      const StateOption(text: "နွေရာသီ", isCorrect: true),
      const StateOption(text: "ဆောင်းရာသီ", isCorrect: false),
    ],
    id: 8,
    correctAnswer: const StateOption(text: "နွေရာသီ", isCorrect: true),
  ),

  StateQuestion(
    text:
        "မင်းတုန်းမင်းလက်ထက်တွင်မြန်မာဘာသာဖြင့်ပထမဆုံးထုတ်၀ေခဲ့သောရတနာပုံသတင်းစာ၏စာတည်းမှာမည်သူဖြစ်သနည်း?",
    options: [
      const StateOption(text: "ဘိုးဝဇီရ", isCorrect: true),
      const StateOption(text: "ဦးပေါ်ဦး", isCorrect: false),
      const StateOption(text: "ဖိုးသူတော်ဦးမင်း", isCorrect: false),
      const StateOption(text: "အကြည်တော်", isCorrect: false),
    ],
    id: 9,
    correctAnswer: const StateOption(text: "ဘိုးဝဇီရ", isCorrect: true),
  ),

  StateQuestion(
    text: "တပင်ရွှေထီး၏ ဖခမည်းတော်သည် မည်သူဖြစ်သနည်း?",
    options: [
      const StateOption(text: "အနော်ရထာ", isCorrect: false),
      const StateOption(text: "မင်းကြီးညို", isCorrect: true),
      const StateOption(text: "နရသီဟပတေ့", isCorrect: false),
      const StateOption(text: "အလောင်းစည်သူ", isCorrect: false),
    ],
    id: 10,
    correctAnswer: const StateOption(text: "မင်းကြီးညို", isCorrect: true),
  ),

  StateQuestion(
    text:
        "၁၉၅၅ခုနှစ်တွင်ရေးသားထုတ်၀ေခဲ့သောဆရာဒဂုန်တာရာ၏ 'ရုပ်ပုံလွှာ' စာအုပ်တွင် မည်သူ၏အကြောင်းကို ရသဟန်နှင့် လှလှပပခြယ်မှုန်းထားသနည်း?",
    options: [
      const StateOption(text: "သခင်ကိုယ်တော်မှိုင်း", isCorrect: false),
      const StateOption(text: "ဗိုလ်စင်္ကြာ", isCorrect: false),
      const StateOption(text: "ဗိုလ်ချုပ်အောင်ဆန်း", isCorrect: true),
      const StateOption(text: "သခင်ဇေယျ", isCorrect: false),
    ],
    id: 11,
    correctAnswer:
        const StateOption(text: "ဗိုလ်ချုပ်အောင်ဆန်း", isCorrect: true),
  ),
];
