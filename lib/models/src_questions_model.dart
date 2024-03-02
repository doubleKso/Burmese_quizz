class LayOutQuestion {
  final int id;
  final String text;
  final List<LayOutOption> options;
  bool isLocked;
  LayOutOption? selectedWiidgetOption;
  LayOutOption? correctAnswer;

  LayOutQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  LayOutQuestion copyWith() {
    return LayOutQuestion(
      id: id,
      text: text,
      options: options
          .map(
            (option) =>
                LayOutOption(text: option.text, isCorrect: option.isCorrect),
          )
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class LayOutOption {
  final String text;
  final bool isCorrect;

  const LayOutOption({
    required this.text,
    required this.isCorrect,
  });
}

final sRCQuestionsList = [
  LayOutQuestion(
    text:
        "What is the speed limit in a residential area if not otherwise specified?",
    options: [
      const LayOutOption(text: "50km/h", isCorrect: true),
      const LayOutOption(text: "40km/h", isCorrect: false),
      const LayOutOption(text: "60km/h", isCorrect: false),
      const LayOutOption(text: "80km/h", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const LayOutOption(text: "50km/h", isCorrect: true),
  ),
  LayOutQuestion(
    text:
        "ဂင်းနစ်စံချိန်တင် ကမ္ဘာ့အကြီးဆုံးစာအုပ်သည်မည်သည့်နိုင်ငံတွင်တည်ရှိသနည်း?",
    options: [
      const LayOutOption(text: "Myanmar", isCorrect: true),
      const LayOutOption(text: "Japan", isCorrect: false),
      const LayOutOption(text: "Egypt", isCorrect: false),
      const LayOutOption(text: "China", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const LayOutOption(text: "Myanmar", isCorrect: true),
  ),

  LayOutQuestion(
    text: "သမုဒ္ဒရာရေသည်မည်သည်ကိုမူတည်၍အရောင်ကွဲပြားမှုရှိသနည်း?",
    options: [
      const LayOutOption(text: "နေရောင်ခြည်", isCorrect: true),
      const LayOutOption(text: "လေထု", isCorrect: false),
      const LayOutOption(text: "လရိပ်", isCorrect: false),
      const LayOutOption(text: "မြေကြီး", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const LayOutOption(text: "နေရောင်ခြည်", isCorrect: true),
  ),

  LayOutQuestion(
    text:
        "ကမ္ဘာ့ဖလားသမိုင်းတစ်လျှောက်တွင်အသက်အငယ်ဆုံးကစာသမားအဖြစ်မှတ်တမ်းဝင်ထားသောကစားသမားမှာမည်သူနည်း?",
    options: [
      const LayOutOption(text: "Pele", isCorrect: false),
      const LayOutOption(text: "Samuel Eto'o", isCorrect: false),
      const LayOutOption(text: "Norman Whiteside", isCorrect: true),
      const LayOutOption(text: "Michael Owen", isCorrect: false),
    ],
    id: 3,
    correctAnswer:
        const LayOutOption(text: "Norman Whiteside", isCorrect: true),
  ),
  // other 4
  LayOutQuestion(
    text:
        "မြန်မာနိုင်ငံသည် အာဆီယံအလှည့်ကျ ဥက္ကဌတာဝန်ယူချိန်တွင် အသုံးပြုသည့် Logo တွင်မည်သည့်ပန်းကိုအသုံးပြုထားသနည်း?",
    options: [
      const LayOutOption(text: "ပိတောက်", isCorrect: false),
      const LayOutOption(text: "သပြေ", isCorrect: false),
      const LayOutOption(text: "နှင်းဆီ", isCorrect: false),
      const LayOutOption(text: "ခရေ", isCorrect: true),
    ],
    id: 4,
    correctAnswer: const LayOutOption(text: "ခရေ", isCorrect: true),
  ),
  LayOutQuestion(
    text: "လူဦးရေအနည်းဆုံးနေထိုင်သောတိုက်သည် မည်သည်ဖြစ်သနည်း?",
    options: [
      const LayOutOption(text: "Antarctica", isCorrect: true),
      const LayOutOption(text: "Australia", isCorrect: false),
      const LayOutOption(text: "Europe", isCorrect: false),
      const LayOutOption(text: "Asia", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const LayOutOption(text: "Antarctica", isCorrect: true),
  ),

  LayOutQuestion(
    text: " ဘီအီးဒီအောင်သိုက်သည် မည်သည့်အနုပညာရှင်ဖြစ်သနည်း?",
    options: [
      const LayOutOption(text: "လူရွှင်တော်", isCorrect: false),
      const LayOutOption(text: "ပန်းချီဆရာ", isCorrect: false),
      const LayOutOption(text: "အဆိုတော်", isCorrect: false),
      const LayOutOption(text: "ပြဇာတ်မင်းသား", isCorrect: true),
    ],
    id: 6,
    correctAnswer: const LayOutOption(text: "ပြဇာတ်မင်းသား", isCorrect: true),
  ),
  LayOutQuestion(
    text: "စစ်ကိုင်းတိုင်းဒေသကြီးကိုဖြတ်၍ စီးဆင်းသောမြစ်မည်မျှရှိသနည်း?",
    options: [
      const LayOutOption(text: "၂ စင်း", isCorrect: false),
      const LayOutOption(text: "၃ စင်း", isCorrect: true),
      const LayOutOption(text: "၄ စင်း", isCorrect: false),
      const LayOutOption(text: "၅ စင်း", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const LayOutOption(text: "၃ စင်း", isCorrect: true),
  ),
  LayOutQuestion(
    text: "နေ့အခါမိုးရွာပြီးချိန်တွင်မည်သည့်အရာကိုတွေ့နိုင်သနည်း?",
    options: [
      const LayOutOption(text: "တိမ်မည်း", isCorrect: false),
      const LayOutOption(text: "သက်တံ့", isCorrect: true),
      const LayOutOption(text: "ကြယ်", isCorrect: false),
      const LayOutOption(text: "လ", isCorrect: false),
    ],
    id: 8,
    correctAnswer: const LayOutOption(text: "သက်တံ့", isCorrect: true),
  ),
  LayOutQuestion(
    text: "ရာစုနှစ်တစ်ခုတွင် ရက်ပေါင်းမည်မျှရှိသနည်း?",
    options: [
      const LayOutOption(text: "၃၆၅", isCorrect: false),
      const LayOutOption(text: "၃၆၅၀၀", isCorrect: true),
      const LayOutOption(text: "၃၆၅၀", isCorrect: false),
      const LayOutOption(text: "၃၆၅၀၀၀", isCorrect: false),
    ],
    id: 9,
    correctAnswer: const LayOutOption(text: "၃၆၅၀၀", isCorrect: true),
  ),
  LayOutQuestion(
    text:
        "မိကျောင်းစောင်းသည် မည်သည့်လူမျိုးတို့၏ ရိုးရာတူရိယာပစ္စည်း ဖြစ်သနည်း?",
    options: [
      const LayOutOption(text: "ကရင်", isCorrect: false),
      const LayOutOption(text: "မွန်", isCorrect: true),
      const LayOutOption(text: "ရခိုင်", isCorrect: false),
      const LayOutOption(text: "ချင်း", isCorrect: false),
    ],
    id: 10,
    correctAnswer: const LayOutOption(text: "မွန်", isCorrect: true),
  ),
];
