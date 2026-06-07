import 'package:get/get.dart';

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {'en_US': enUS, 'hi_IN': hiIN, 'pa_IN': paIN};

  static const Map<String, String> enUS = {
    // Navigation
    'home': 'Home',
    'about': 'About',
    'services': 'Services',
    'contact': 'Contact',
    'language': 'Language',

    // Home Page
    'welcome': 'Welcome',
    'welcome_subtitle': 'Rapid, Gentle and Permanent Cure',
    'cta_book_appointment': 'Book Appointment',
    'cta_learn_more': 'Learn More',

    // Doctor Info
    'doctor_name': 'Dr. Sangam Kang',
    'qualification': 'BHMS (Panjab University, Chandigarh)',
    'clinic_name': "Dr. Kang's Homoeopathic Clinic",
    'location': 'SCO 50, First floor, Phase 11, Sector 65, Sahibzada Ajit Singh Nagar, Punjab 160062',

    // About Page
    'about_title': 'About Dr. Sangam Kang',
    'about_description':
        'Dr. Sangam Kang is a qualified homoeopathic practitioner with a deep commitment to holistic healing. With her BHMS degree from Panjab University, Chandigarh, she brings extensive knowledge and compassionate care to her patients.',
    'experience': 'Experience',
    'years_experience': 'Years of Clinical Practice',
    'philosophy': 'Our Philosophy',
    'philosophy_description':
        'Individualized Care & Holistic Approach\n\nWe recognize that every person is unique. Our approach focuses on understanding each patient\'s individual physical, mental, and emotional characteristics rather than concentrating only on the disease.\n\nWe believe in treating the individual, not just the illness, to support overall well-being and promote a balanced approach to health.',

    // Services
    'services_title': 'Our Services',
    'services_subtitle': 'Comprehensive Homoeopathic Care',
    'services_title_description':
        'Comprehensive management of chronic diseases\n\nPrompt treatment of acute conditions\n\nGentle, specialized care for children.\n\nEach service is tailored to meet the unique needs of our patients.',
    'chronic_diseases': 'Chronic Diseases',
    'chronic_description':
        'Dr. Kang specializes in comprehensive homoeopathic management of chronic and long-standing health conditions. Our individualized treatment approach addresses underlying causes to provide sustainable relief and improved quality of life.',
    'acute_conditions': 'Acute Conditions',
    'acute_description':
        'We provide prompt and effective homoeopathic care for acute ailments and sudden health issues. Our remedies offer natural and rapid relief while supporting your body\'s natural healing mechanisms.',
    'skin_disorders': 'Skin Disorders',
    'skin_description': 'Comprehensive homoeopathic solutions for various skin conditions and allergies.',
    'digestive_health': 'Digestive Health',
    'digestive_description': 'Effective treatment for gastrointestinal problems and digestive disorders.',
    'women_health': "Women's Health",
    'women_description': 'Specialized care for women\'s health issues including hormonal balance and fertility.',
    'child_health': "Children's Health",
    'child_description':
        'Our clinic offers gentle and safe homoeopathic remedies specifically designed for children. We focus on treating common childhood ailments with a compassionate, child-centered approach that ensures their safety and well-being.',

    // Contact Page
    'contact_title': 'Get In Touch',
    'contact_subtitle': 'We\'d love to hear from you',
    'contact_form': 'Send Message',
    'name': 'Full Name',
    'email': 'Email Address',
    'phone': 'Phone Number',
    'message': 'Message',
    'send': 'Send Message',
    'sending': 'Sending...',
    'success': 'Message sent successfully!',
    'error': 'Error sending message',

    // Contact Methods
    'contact_methods': 'Contact Methods',
    'call_us': 'Call Us',
    'email_us': 'Email Us',
    'visit_us': 'Visit Us',
    'whatsapp_us': 'WhatsApp Us',
    'phone_number': '+91 6284717772',
    'email_address': 'sangamkang@gmail.com',
    'clinic_address': 'SCO 50, First floor, Phase 11, Sector 65, Sahibzada Ajit Singh Nagar, Punjab 160062',

    // Common
    'loading': 'Loading...',
    'try_again': 'Try Again',
    'back': 'Back',
    'close': 'Close',
    'ok': 'OK',
    'cancel': 'Cancel',
    'confirm': 'Confirm',

    // Footer
    'all_rights_reserved': 'All Rights Reserved',
    'developed_by': 'Developed with ❤️',
    'follow_us': 'Follow Us',
  };

  static const Map<String, String> hiIN = {
    // Navigation
    'home': 'होम',
    'about': 'परिचय',
    'services': 'सेवाएं',
    'contact': 'संपर्क करें',
    'language': 'भाषा',

    // Home Page
    'welcome': 'स्वागत है',
    'welcome_subtitle': 'तेज़, सौम्य और स्थायी इलाज',
    'cta_book_appointment': 'नियुक्ति बुक करें',
    'cta_learn_more': 'और जानें',

    // Doctor Info
    'doctor_name': 'डॉ. संगम कांग',
    'qualification': 'BHMS (पंजाब विश्वविद्यालय, चंडीगढ़)',
    'clinic_name': 'डॉ. कांग होम्योपैथिक क्लीनिक',
    'location': 'मोहाली, पंजाब',

    // About Page
    'about_title': 'डॉ. संगम कांग के बारे में',
    'about_description':
        'डॉ. संगम कांग एक योग्य होम्योपैथिक चिकित्सक हैं जो समग्र उपचार के लिए प्रतिबद्ध हैं। पंजाब विश्वविद्यालय, चंडीगढ़ से BHMS की डिग्री के साथ, वह अपने रोगियों को विस्तृत ज्ञान और करुणामय देखभाल प्रदान करती हैं।',
    'experience': 'अनुभव',
    'years_experience': 'वर्षों का क्लिनिकल अनुभव',
    'philosophy': 'हमारा दर्शन',
    'philosophy_description':
        'व्यक्तिगत देखभाल और समग्र दृष्टिकोण\n\nहम मानते हैं कि हर व्यक्ति अद्वितीय है। हमारा दृष्टिकोण प्रत्येक रोगी की व्यक्तिगत शारीरिक, मानसिक और भावनात्मक विशेषताओं को समझने पर केंद्रित है, केवल रोग पर ध्यान केंद्रित करने के बजाय।\n\nहम व्यक्ति को ठीक करने में विश्वास करते हैं, केवल बीमारी को नहीं, समग्र स्वास्थ्य का समर्थन करने और स्वास्थ्य के प्रति संतुलित दृष्टिकोण को बढ़ावा देने के लिए।',

    // Services
    'services_title': 'हमारी सेवाएं',
    'services_subtitle': 'व्यापक होम्योपैथिक देखभाल',
    'services_title_description':
        'क्रोनिक रोगों का व्यापक प्रबंधन\nतीव्र स्थितियों का तत्काल उपचार\nबच्चों के लिए कोमल, विशेषीकृत देखभाल।\nप्रत्येक सेवा हमारे रोगियों की अद्वितीय आवश्यकताओं को पूरा करने के लिए तैयार की जाती है।',
    'chronic_diseases': 'क्रोनिक रोग',
    'chronic_description':
        'डॉ. कांग दीर्घकालीन और जीर्ण स्वास्थ्य स्थितियों के व्यापक होम्योपैथिक प्रबंधन में विशेषज्ञ हैं। हमारा व्यक्तिगत उपचार दृष्टिकोण अंतर्निहित कारणों को संबोधित करता है और टिकाऊ राहत तथा जीवन की गुणवत्ता में सुधार प्रदान करता है।',
    'acute_conditions': 'तीव्र स्थितियां',
    'acute_description':
        'हम तीव्र बीमारियों और अचानक स्वास्थ्य समस्याओं के लिए तत्काल और प्रभावी होम्योपैथिक देखभाल प्रदान करते हैं। हमारे उपचार प्राकृतिक और तेजी से राहत देते हैं और आपके शरीर की प्राकृतिक उपचार क्षमता को समर्थन करते हैं।',
    'skin_disorders': 'त्वचा विकार',
    'skin_description': 'विभिन्न त्वचा स्थितियों और एलर्जी के लिए व्यापक होम्योपैथिक समाधान।',
    'digestive_health': 'पाचन स्वास्थ्य',
    'digestive_description': 'जठरांत्र संबंधी समस्याओं और पाचन विकारों के लिए प्रभावी उपचार।',
    'women_health': 'महिलाओं का स्वास्थ्य',
    'women_description': 'हार्मोनल संतुलन और प्रजनन क्षमता सहित महिलाओं के स्वास्थ्य मुद्दों के लिए विशेष देखभाल।',
    'child_health': 'बच्चों का स्वास्थ्य',
    'child_description':
        'हमारी क्लिनिक बच्चों के लिए विशेष रूप से डिज़ाइन किए गए कोमल और सुरक्षित होम्योपैथिक उपचार प्रदान करती है। हम सामान्य बचपन की बीमारियों के इलाज पर ध्यान केंद्रित करते हैं जो उनकी सुरक्षा और कल्याण सुनिश्चित करता है।',

    // Contact Page
    'contact_title': 'हमसे संपर्क करें',
    'contact_subtitle': 'हमें आपसे सुनना पसंद है',
    'contact_form': 'संदेश भेजें',
    'name': 'पूरा नाम',
    'email': 'ईमेल पता',
    'phone': 'फोन नंबर',
    'message': 'संदेश',
    'send': 'संदेश भेजें',
    'sending': 'भेज रहे हैं...',
    'success': 'संदेश सफलतापूर्वक भेजा गया!',
    'error': 'संदेश भेजने में त्रुटि',

    // Contact Methods
    'contact_methods': 'संपर्क के तरीके',
    'call_us': 'हमें कॉल करें',
    'email_us': 'ईमेल करें',
    'visit_us': 'हमसे मिलें',
    'whatsapp_us': 'WhatsApp करें',
    'phone_number': '+91 6284717772',
    'email_address': 'sangamkang@gmail.com',
    'clinic_address': 'मोहाली, पंजाब, भारत',

    // Common
    'loading': 'लोड हो रहा है...',
    'try_again': 'फिर से प्रयास करें',
    'back': 'वापस',
    'close': 'बंद करें',
    'ok': 'ठीक है',
    'cancel': 'रद्द करें',
    'confirm': 'पुष्टि करें',

    // Footer
    'all_rights_reserved': 'सर्वाधिकार सुरक्षित',
    'developed_by': 'प्रेम से विकसित',
    'follow_us': 'हमें फॉलो करें',
  };

  static const Map<String, String> paIN = {
    // Navigation
    'home': 'ਘਰ',
    'about': 'ਬਾਰੇ',
    'services': 'ਸੇਵਾਵਾਂ',
    'contact': 'ਸੰਪਰਕ ਕਰੋ',
    'language': 'ਭਾਸ਼ਾ',

    // Home Page
    'welcome': 'ਸੁਆਗਤ ਹੈ',
    'welcome_subtitle': 'ਤੇਜ਼, ਕੋਮਲ ਅਤੇ ਸਥਾਈ ਇਲਾਜ',
    'cta_book_appointment': 'ਅਪੁਆਇੰਟਮੈਂਟ ਬੁੱਕ ਕਰੋ',
    'cta_learn_more': 'ਹੋਰ ਜਾਣੋ',

    // Doctor Info
    'doctor_name': 'ਡਾ. ਸੰਗਮ ਕਾਂਗ',
    'qualification': 'BHMS (ਪੰਜਾਬ ਯੂਨੀਵਰਸਿਟੀ, ਚੰਡੀਗੜ੍ਹ)',
    'clinic_name': 'ਡਾ. ਕਾਂਗ ਹੋਮੀਓਪੈਥਿਕ ਕਲੀਨਿਕ',
    'location': 'ਮੋਹਾਲੀ, ਪੰਜਾਬ',

    // About Page
    'about_title': 'ਡਾ. ਸੰਗਮ ਕਾਂਗ ਬਾਰੇ',
    'about_description':
        'ਡਾ. ਸੰਗਮ ਕਾਂਗ ਇੱਕ ਯੋਗ ਹੋਮੀਓਪੈਥਿਕ ਪ੍ਰੈਕਟੀਸ਼ਨਰ ਹਨ ਜੋ ਸਮੁਚੀ ਸ਼ਿਫਾ ਲਈ ਵਚਨਬੱਧ ਹਨ। ਪੰਜਾਬ ਯੂਨੀਵਰਸਿਟੀ, ਚੰਡੀਗੜ੍ਹ ਤੋਂ BHMS ਦੀ ਡਿਗਰੀ ਦੇ ਨਾਲ, ਉਹ ਆਪਣੇ ਮਰੀਜ਼ਾਂ ਨੂੰ ਵਿਆਪਕ ਗਿਆਨ ਅਤੇ ਸਹਾਨੁਭੂਤੀਪੂਰਣ ਦੇਖਭਾਲ ਪ੍ਰਦਾਨ ਕਰਦੀ ਹਨ।',
    'experience': 'ਅਨੁਭਵ',
    'years_experience': 'ਸਾਲਾਂ ਦਾ ਕਲਿਨੀਕਲ ਅਨੁਭਵ',
    'philosophy': 'ਸਾਡਾ ਫ਼ਲਸਫ਼ਾ',
    'philosophy_description':
        'ਵਿਅਕਤੀਗਤ ਦੇਖਭਾਲ ਅਤੇ ਸਮਗ੍ਰ ਦ੍ਰਿਸ਼ਟੀਕੋਣ\n\nਅਸੀਂ ਮੰਨਦੇ ਹਾਂ ਕਿ ਹਰੇਕ ਵਿਅਕਤੀ ਵਿਲੱਖਣ ਹੈ। ਸਾਡਾ ਦ੍ਰਿਸ਼ਟੀਕੋਣ ਹਰੇਕ ਰੋਗੀ ਦੀਆਂ ਵਿਅਕਤੀਗਤ ਸਰੀਰਕ, ਮਾਨਸਿਕ ਅਤੇ ਜਜਬਾਤੀ ਵਿਸ਼ੇਸ਼ਤਾਵਾਂ ਨੂੰ ਸਮਝਣ ਤੇ ਕੇਂਦਰਿਤ ਹੈ, ਸਿਰਫ ਰੋਗ ਤੇ ਧਿਆਨ ਦੇਣ ਦੀ ਬਜਾਏ।\n\nਅਸੀਂ ਵਿਅਕਤੀ ਨੂੰ ਠੀਕ ਕਰਨ ਵਿੱਚ ਵਿਸ਼ਵਾਸ ਕਰਦੇ ਹਾਂ, ਸਿਰਫ ਬਿਮਾਰੀ ਨੂੰ ਨਹੀਂ, ਸਮਗ੍ਰ ਸਿਹਤ ਦਾ ਸਮਰਥਨ ਕਰਨ ਅਤੇ ਸਿਹਤ ਲਈ ਸੰਤੁਲਿਤ ਪਹੁੰਚ ਨੂੰ ਅੱਗੇ ਵਧਾਉਣ ਲਈ।',

    // Services
    'services_title': 'ਸਾਡੀਆਂ ਸੇਵਾਵਾਂ',
    'services_subtitle': 'ਵਿਆਪਕ ਹੋਮੀਓਪੈਥਿਕ ਦੇਖਭਾਲ',
    'services_title_description':
        'ਪ੍ਰੋਣਿਕ ਰੋਗਾਂ ਦਾ ਵਿਆਪਕ ਪ੍ਰਬੰਧ\nਤੀਬਰ ਸਥਿਤੀਆਂ ਦਾ ਤੁਰੰਤ ਇਲਾਜ\nਬੱਚਿਆਂ ਲਈ ਨਰਮ, ਵਿਸ਼ੇਸ਼ ਦੇਖਭਾਲ।\nਹਰੇਕ ਸੇਵਾ ਸਾਡੇ ਮਰੀਜ਼ਾਂ ਦੀਆਂ ਅਨੌਖੀ ਲੋੜਾਂ ਪੂਰੀਆਂ ਕਰਨ ਲਈ ਤਿਆਰ ਕੀਤੀ ਜਾਂਦੀ ਹੈ।',
    'chronic_diseases': 'ਪ੍ਰੋਣਿਕ ਰੋਗ',
    'chronic_description':
        'ਡਾ. ਕਾਂਗ ਦੀਰਘਕਾਲੀਨ ਅਤੇ ਲੰਬੇ ਸਮੇਂ ਚੱਲਣ ਵਾਲੀਆਂ ਸਿਹਤ ਸਥਿਤੀਆਂ ਦੇ ਵਿਆਪਕ ਹੋਮੀਓਪੈਥਿਕ ਪ੍ਰਬੰਧ ਵਿੱਚ ਵਿਸ਼ੇਸ਼ਜ੍ਞ ਹਨ। ਸਾਡਾ ਵਿਅਕਤੀਗਤ ਇਲਾਜ ਪਹੁੰਚ ਅੰਤਰ-ਨਿਹਿਤ ਕਾਰਣਾਂ ਨੂੰ ਸੰਬੋਧਿਤ ਕਰਦਾ ਹੈ ਅਤੇ ਸਥਾਈ ਰਾਹਤ ਤਥਾ ਜੀਵਨ ਦੀ ਗੁਣਵੱਤਾ ਵਿੱਚ ਸੁਧਾਰ ਪ੍ਰਦਾਨ ਕਰਦਾ ਹੈ।',
    'acute_conditions': 'ਤੀਬਰ ਸਥਿਤੀਆਂ',
    'acute_description':
        'ਅਸੀਂ ਤੀਬਰ ਬਿਮਾਰੀਆਂ ਅਤੇ ਅਚਾਨਕ ਸਿਹਤ ਸਮੱਸਿਆਵਾਂ ਲਈ ਤੁਰੰਤ ਅਤੇ ਪ੍ਰਭਾਵਸ਼ਾਲੀ ਹੋਮੀਓਪੈਥਿਕ ਦੇਖਭਾਲ ਪ੍ਰਦਾਨ ਕਰਦੇ ਹਾਂ। ਸਾਡੇ ਉਪਚਾਰ ਕੁਦਰਤੀ ਅਤੇ ਤੇਜ਼ ਰਾਹਤ ਦਿੰਦੇ ਹਨ ਅਤੇ ਆਪਣੇ ਸਰੀਰ ਦੀ ਕੁਦਰਤੀ ਚੰਗਾਈ ਦੀ ਸ਼ਕਤੀ ਨੂੰ ਸਮਰਥਨ ਕਰਦੇ ਹਨ।',
    'skin_disorders': 'ਚਮੜੀ ਦੇ ਵਿਕਾਰ',
    'skin_description': 'ਵੱਖ ਵੱਖ ਚਮੜੀ ਦੀਆਂ ਸਥਿਤੀਆਂ ਅਤੇ ਐਲਰਜੀਆਂ ਲਈ ਵਿਆਪਕ ਹੋਮੀਓਪੈਥਿਕ ਹੱਲ।',
    'digestive_health': 'ਪाਚਨ ਸਿਹਤ',
    'digestive_description': 'ਜਿਠਵਾਂ ਸੰਬੰਧੀ ਸਮੱਸਿਆਵਾਂ ਅਤੇ ਪਾਚਨ ਵਿਕਾਰਾਂ ਲਈ ਪ੍ਰਭਾਵਸ਼ਾਲੀ ਇਲਾਜ।',
    'women_health': 'ਮਹਿਲਾਵਾਂ ਦੀ ਸਿਹਤ',
    'women_description': 'ਹਾਰਮੋਨਲ ਸੰਤੁਲਨ ਅਤੇ ਪ੍ਰਜਨਨ ਸੰਬੰਧੀ ਮੁੱਦਿਆਂ ਸਮੇਤ ਮਹਿਲਾਵਾਂ ਦੀ ਸਿਹਤ ਸਮੱਸਿਆਵਾਂ ਲਈ ਖਾਸ ਦੇਖਭਾਲ।',
    'child_health': 'ਬੱਚਿਆਂ ਦੀ ਸਿਹਤ',
    'child_description':
        'ਸਾਡੀ ਕਲਿਨਿਕ ਬੱਚਿਆਂ ਲਈ ਖਾਸ ਤੌਰ ਤੇ ਤਿਆਰ ਕੀਤੇ ਗਏ ਨਰਮ ਅਤੇ ਸੁਰੱਖਿਅਤ ਹੋਮੀਓਪੈਥਿਕ ਉਪਚਾਰ ਪ੍ਰਦਾਨ ਕਰਦੀ ਹੈ। ਅਸੀਂ ਆਮ ਬਚਪਨ ਦੀਆਂ ਬਿਮਾਰੀਆਂ ਦੇ ਇਲਾਜ ਤੇ ਧਿਆਨ ਦਿੰਦੇ ਹਾਂ ਜੋ ਉਨ੍ਹਾਂ ਦੀ ਸੁਰੱਖਿਆ ਅਤੇ ਭਲਾਈ ਨੂੰ ਯਕੀਨੀ ਬਣਾਉਂਦਾ ਹੈ।',

    // Contact Page
    'contact_title': 'ਸਾਡੇ ਨਾਲ ਸੰਪਰਕ ਕਰੋ',
    'contact_subtitle': 'ਸਾਨੂੰ ਤੁਹਾਡੀ ਸੁਣਨ ਪਸੰਦ ਹੈ',
    'contact_form': 'ਸੁਨੇਸ ਭੇਜੋ',
    'name': 'ਪੂਰਾ ਨਾਮ',
    'email': 'ਈਮੇਲ ਸਿਰਨਾਵਾਂ',
    'phone': 'ਫ਼ੋਨ ਨੰਬਰ',
    'message': 'ਸੁਨੇਸ',
    'send': 'ਸੁਨੇਸ ਭੇਜੋ',
    'sending': 'ਭੇਜ ਰਹੇ ਹਾਂ...',
    'success': 'ਸੁਨੇਸ ਸਫਲਤਾਪੂਰਵਕ ਭੇਜਿਆ ਗਿਆ!',
    'error': 'ਸੁਨੇਸ ਭੇਜਣ ਵਿੱਚ ਗਲਤੀ',

    // Contact Methods
    'contact_methods': 'ਸੰਪਰਕ ਦੇ ਤਰੀਕੇ',
    'call_us': 'ਸਾਨੂੰ ਕਾਲ ਕਰੋ',
    'email_us': 'ਈਮੇਲ ਕਰੋ',
    'visit_us': 'ਸਾਨੂੰ ਮਿਲੋ',
    'whatsapp_us': 'WhatsApp ਕਰੋ',
    'phone_number': '+91 6284717772',
    'email_address': 'sangamkang@gmail.com',
    'clinic_address': 'ਮੋਹਾਲੀ, ਪੰਜਾਬ, ਭਾਰਤ',

    // Common
    'loading': 'ਲੋਡ ਹੋ ਰਿਹਾ ਹੈ...',
    'try_again': 'ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ',
    'back': 'ਪਿੱਛੇ',
    'close': 'ਬੰਦ ਕਰੋ',
    'ok': 'ਠੀਕ ਹੈ',
    'cancel': 'ਰੱਦ ਕਰੋ',
    'confirm': 'ਪੁਸ਼ਟੀ ਕਰੋ',

    // Footer
    'all_rights_reserved': 'ਸਾਰੇ ਅਧਿਕਾਰ ਸੁਰੱਖਿਅਤ',
    'developed_by': 'ਪਿਆਰ ਨਾਲ ਵਿਕਸਤ',
    'follow_us': 'ਸਾਨੂੰ ਫਾਲੋ ਕਰੋ',
  };
}
