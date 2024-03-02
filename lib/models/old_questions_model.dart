class WidgetQuestion {
  final int id;
  final String text;
  final List<WiidgetOption> options;
  bool isLocked;
  WiidgetOption? selectedWiidgetOption;
  WiidgetOption correctAnswer;

  WidgetQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  WidgetQuestion copyWith() {
    return WidgetQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              WiidgetOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class WiidgetOption {
  final String? text;
  final bool? isCorrect;

  const WiidgetOption({
    this.text,
    this.isCorrect,
  });
}

final oLDQuestionsList = [
  WidgetQuestion(
    text: "စာလုံးအဖြူနဲ့ အနီရောင် အဋ္ဌဂံပုံသဏ္ဍာန် သင်္ကေတက ဘာကို ညွှန်တာလဲ?",
    options: [
      const WiidgetOption(text: "ရပ်", isCorrect: true),
      const WiidgetOption(text: "ကြည့်", isCorrect: false),
      const WiidgetOption(text: "သွား", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const WiidgetOption(text: "ရပ်", isCorrect: true),
  ),
  WidgetQuestion(
      text:
          "အာမေဍိတ်အမှတ်အသားပါသော အဝါရောင်တြိဂံပုံသဏ္ဌာန်သည် ဘာကိုဖော်ပြသနည်း?",
      options: [
        const WiidgetOption(text: "သွား", isCorrect: false),
        const WiidgetOption(text: "သတိ", isCorrect: true),
        const WiidgetOption(text: "ရပ်", isCorrect: false),
      ],
      id: 1,
      correctAnswer: const WiidgetOption(text: "သတိ", isCorrect: true)),
  WidgetQuestion(
      text: "မြန်မာဘာသာတွင် အက္ခရာအမျိုးအစားပေါင်းမည်မျှရှိသနည်း?",
      options: [
        const WiidgetOption(text: "၃၃", isCorrect: false),
        const WiidgetOption(text: "၁၁", isCorrect: false),
        const WiidgetOption(text: "၂", isCorrect: true),
        const WiidgetOption(text: "၂၆", isCorrect: false),
      ],
      id: 2,
      correctAnswer: const WiidgetOption(text: "၂", isCorrect: true)),
  WidgetQuestion(
      text: "ပင်နီဆီလင်ကို မည်သည်မှထုတ်ယူရရှိသနည်း?",
      options: [
        const WiidgetOption(text: "မြင်းသွေး", isCorrect: false),
        const WiidgetOption(text: "နနွင်း", isCorrect: false),
        const WiidgetOption(text: "မှို", isCorrect: true),
        const WiidgetOption(text: "ဂျင်း", isCorrect: false),
      ],
      id: 3,
      correctAnswer: const WiidgetOption(text: "မှို", isCorrect: true)),
  WidgetQuestion(
      text: "အဆိုတော်သာဒီးလူ သီဆိုသည့် သီချင်းအမည်ကိုရွေးပါ?",
      options: [
        const WiidgetOption(text: "ရန်သူတော်ငါးပါး", isCorrect: false),
        const WiidgetOption(text: "ရန်သူတော်ခုနစ်ပါး", isCorrect: false),
        const WiidgetOption(text: "ရန်သူတော်ကိုးပါး", isCorrect: false),
        const WiidgetOption(text: "ရန်သူတော်ခြောက်ပါး", isCorrect: true),
      ],
      id: 4,
      correctAnswer:
          const WiidgetOption(text: "ရန်သူတော်ခြောက်ပါး", isCorrect: true)),
  WidgetQuestion(
      text:
          "'အကွပ်မရှိသည့်....... ပရမ်းပတာ' ဟူသောစကားပုံတွင်မည်သည့်စကားလုံးဖြည့်ရမည်နည်း?",
      options: [
        const WiidgetOption(text: "ကြမ်း", isCorrect: true),
        const WiidgetOption(text: "တောင်း", isCorrect: false),
        const WiidgetOption(text: "ဆန်ကော", isCorrect: false),
        const WiidgetOption(text: "ဖျာ", isCorrect: false),
      ],
      id: 5,
      correctAnswer: const WiidgetOption(text: "ကြမ်း", isCorrect: true)),
  WidgetQuestion(
      text: "Daniel Craig ၏ပထမဆုံး ဂျိမ်းစ်ဘွန်းဇာတ်ကားကိုရွေးပါ?",
      options: [
        const WiidgetOption(text: "Casino Royale", isCorrect: true),
        const WiidgetOption(text: "Skyfall", isCorrect: false),
        const WiidgetOption(text: "Quantum of Solace", isCorrect: false),
        const WiidgetOption(text: "No Time To Die!", isCorrect: false),
      ],
      id: 6,
      correctAnswer:
          const WiidgetOption(text: "Casino Royale", isCorrect: true)),
  WidgetQuestion(
      text: "တပင်ရွှေထီး၏ ဖခမည်းတော်သည် မည်သူဖြစ်သနည်း?",
      options: [
        const WiidgetOption(text: "မင်းကြီးညို", isCorrect: true),
        const WiidgetOption(text: "အနော်ရထာ", isCorrect: false),
        const WiidgetOption(text: "နရသီဟပတေ့", isCorrect: false),
        const WiidgetOption(text: "ဦးအောင်ဇေယျ", isCorrect: false),
      ],
      id: 7,
      correctAnswer: const WiidgetOption(text: "မင်းကြီးညို", isCorrect: true)),
  WidgetQuestion(
      text: "UEFA Champion League ဖလား ရရှိခဲ့ဖူးသည့် အသင်းကိုရွေးပါ?",
      options: [
        const WiidgetOption(text: "Aston Villa", isCorrect: true),
        const WiidgetOption(text: "Arsenal FC", isCorrect: false),
        const WiidgetOption(text: "Chelsea FC", isCorrect: false),
        const WiidgetOption(text: "Manchester City", isCorrect: false),
      ],
      id: 8,
      correctAnswer: const WiidgetOption(text: "Aston Villa", isCorrect: true)),
  WidgetQuestion(
      text: "Odometer သည် မည်သည်ကိုတိုင်းတာသော ကိရိယာဖြစ်သနည်း?",
      options: [
        const WiidgetOption(text: "Distance", isCorrect: true),
        const WiidgetOption(text: "Oil", isCorrect: false),
        const WiidgetOption(text: "Battery", isCorrect: false),
        const WiidgetOption(text: "Weather", isCorrect: false),
      ],
      id: 9,
      correctAnswer: const WiidgetOption(text: "Distance", isCorrect: true)),
  WidgetQuestion(
      text: "မည်သည့်စာရေးဆရာ၏ကလောင်အမည်တွင် ထူးခြားသောဝိသေသပါရှိသနည်း?",
      options: [
        const WiidgetOption(text: "ရွှေဥဒေါင်း", isCorrect: false),
        const WiidgetOption(text: "ဇာဝန", isCorrect: false),
        const WiidgetOption(text: "ဘုန်းနိုင်", isCorrect: true),
        const WiidgetOption(text: "ဖေမြင့်", isCorrect: false),
      ],
      id: 10,
      correctAnswer: const WiidgetOption(text: "ဘုန်းနိုင်", isCorrect: true)),
  WidgetQuestion(
      text: "မြန်မာနိုင်ငံ၏ပထမဆုံး မီးရထားလမ်းပိုင်းမှာ မည်သည်ဖြစ်သနည်း?",
      options: [
        const WiidgetOption(text: "ရန်ကုန်-မန္တလေး", isCorrect: false),
        const WiidgetOption(text: "ရန်ကုန်-ပြည်", isCorrect: true),
        const WiidgetOption(text: "ရန်ကုန်-မော်လမြိုင်", isCorrect: false),
        const WiidgetOption(text: "ရန်ကုန်-ပုဂံ", isCorrect: false),
      ],
      id: 11,
      correctAnswer:
          const WiidgetOption(text: "ရန်ကုန်-ပြည်", isCorrect: true)),
  WidgetQuestion(
      text: "အင်းဝမြို့ကိုတည်ထောင်သော မြို့တည်နန်းတည်မင်းမှာ မည်သူဖြစ်သနည်း?",
      options: [
        const WiidgetOption(text: "သီဟသူ", isCorrect: false),
        const WiidgetOption(text: "သတိုးမင်းဖျား", isCorrect: true),
        const WiidgetOption(text: "မင်းခေါင်", isCorrect: false),
        const WiidgetOption(text: "ဦးပုည", isCorrect: false),
      ],
      id: 12,
      correctAnswer:
          const WiidgetOption(text: "သတိုးမင်းဖျား", isCorrect: true)),
  WidgetQuestion(
      text: "Durian ဟူသော ဝေါဟာရသည် မည်သည့်ဘာသာစကားမှဆင်းသက်လာသနည်း?",
      options: [
        const WiidgetOption(text: "Malaysia", isCorrect: true),
        const WiidgetOption(text: "Indonesia", isCorrect: false),
        const WiidgetOption(text: "Thailand", isCorrect: false),
        const WiidgetOption(text: "Vietnam", isCorrect: false),
      ],
      id: 13,
      correctAnswer: const WiidgetOption(text: "Malaysia", isCorrect: true)),
  WidgetQuestion(
    text: "စွမ်းအင်အမျိုးမျိုး၏ မူလရင်းမြစ်မှာ မည်သည်ဖြစ်သနည်း?",
    options: [
      const WiidgetOption(text: "ရေ", isCorrect: false),
      const WiidgetOption(text: "နေ", isCorrect: true),
      const WiidgetOption(text: "လေ", isCorrect: false),
      const WiidgetOption(text: "မီး", isCorrect: false),
    ],
    id: 14,
    correctAnswer: const WiidgetOption(text: "နေ", isCorrect: true),
  ),
  WidgetQuestion(
    text:
        "(၁)ပေါင် အလေးချိန်ရှိသော ကိတ်မုန့်တစ်လုံးသည် ကီလိုဂရမ်အားဖြင့် မည်မျှရှိသနည်း?",
    options: [
      const WiidgetOption(text: "0.45", isCorrect: true),
      const WiidgetOption(text: "0.8", isCorrect: false),
      const WiidgetOption(text: "0.9", isCorrect: false),
      const WiidgetOption(text: "1.8", isCorrect: false),
    ],
    id: 15,
    correctAnswer: const WiidgetOption(text: "0.45", isCorrect: true),
  ),
];
