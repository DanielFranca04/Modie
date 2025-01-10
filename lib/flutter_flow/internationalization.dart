import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'it'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? itText = '',
  }) =>
      [enText, itText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // GetStartedScreen
  {
    '9n0f1ur3': {
      'en': 'THE FIRST USER-LED & SHOPPABLE LIFESTYLE ENCYCLOPEDIA ',
      'it':
          'LA PRIMA ENCICLOPEDIA DELLO STILE DI VITA GUIDATA DALL\'UTENTE E ACQUISTABILE',
    },
    '717uploj': {
      'en': 'Get Started',
      'it': 'Iniziare',
    },
    's3lzae9x': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // LoginScreen
  {
    'tdqo37nm': {
      'en': 'WELCOME BACK',
      'it': 'BENTORNATO',
    },
    'wmgvmgqk': {
      'en': 'Email',
      'it': 'E-mail',
    },
    'az1d2701': {
      'en': 'Password',
      'it': 'Password',
    },
    'igjob0tc': {
      'en': 'Invalid credentials',
      'it': 'Credenziali non valide',
    },
    'bkotepr6': {
      'en': 'Forgot your password?',
      'it': 'Hai dimenticato la password?',
    },
    '8ml0tngf': {
      'en': 'or log in with',
      'it': 'oppure accedi con',
    },
    '0gel59bk': {
      'en': 'Apple',
      'it': 'Mela',
    },
    'ymvsugt3': {
      'en': 'Google',
      'it': 'Google',
    },
    '9e4wxg5d': {
      'en': 'LOGIN',
      'it': 'LOGIN',
    },
    '0480tghd': {
      'en': 'Don\'t have an account?',
      'it': 'Non hai un account?',
    },
    'mi6p4a24': {
      'en': ' Sign up',
      'it': 'Iscrizione',
    },
    '6fy4n6m1': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // CreateAccountScreen
  {
    'u3dxqaf2': {
      'en': 'CREATE ACCOUNT',
      'it': 'CREARE UN ACCOUNT',
    },
    '2itnbv69': {
      'en': 'Email',
      'it': 'E-mail',
    },
    'teky9wm4': {
      'en': 'This email is already registered',
      'it': 'Questa email è già registrata',
    },
    'i92n3h9d': {
      'en': 'Password',
      'it': 'Password',
    },
    'egbiu63l': {
      'en': 'Confirm Password',
      'it': 'Conferma password',
    },
    'vxipsy8v': {
      'en': 'Field is required',
      'it': 'Il campo è obbligatorio',
    },
    'jcn97ic6': {
      'en': 'Please choose an option from the dropdown',
      'it': 'Si prega di selezionare un\'opzione dal menu a discesa',
    },
    'kd1iwao9': {
      'en': 'Field is required',
      'it': 'Il campo è obbligatorio',
    },
    '5tch86hh': {
      'en': 'Please choose an option from the dropdown',
      'it': 'Si prega di selezionare un\'opzione dal menu a discesa',
    },
    '638w6gzl': {
      'en': 'Field is required',
      'it': 'Il campo è obbligatorio',
    },
    'x0c2qng2': {
      'en': 'Please choose an option from the dropdown',
      'it': 'Si prega di selezionare un\'opzione dal menu a discesa',
    },
    'l646p7cq': {
      'en': 'Does not match',
      'it': 'Non corrisponde',
    },
    'cir9qh7j': {
      'en': 'Invitation Code',
      'it': 'Codice di invito',
    },
    'kb53gao6': {
      'en': 'Invalid code',
      'it': 'Codice non valido',
    },
    'x0n2s2nd': {
      'en': 'CONTINUE',
      'it': 'CONTINUARE',
    },
    'nhj41df1': {
      'en': 'Have an account?',
      'it': 'Hai un account?',
    },
    '9udgb21t': {
      'en': ' Log in',
      'it': 'Login',
    },
    '8n19weai': {
      'en': 'By continuing, you agree to Modie’s ',
      'it': 'Continuando, accetti i termini e le condizioni di Modie',
    },
    'npaw96ji': {
      'en': 'Terms of Service ',
      'it': 'Termini di servizio',
    },
    '4515eazq': {
      'en': 'and confirm that you read our ',
      'it': 'e conferma di aver letto il nostro',
    },
    'sjzle4h0': {
      'en': 'Privacy Policy.',
      'it': 'Politica sulla riservatezza.',
    },
    't5ssyrpu': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // SetupProfileScreen
  {
    'ucjdwxlk': {
      'en': 'SET UP YOUR MODIE PROFILE',
      'it': 'IMPOSTA IL TUO PROFILO MODIE',
    },
    'l8s41pti': {
      'en': 'Enter a photo and your Modie username',
      'it': 'Inserisci una foto e il tuo nome utente Modie',
    },
    'ula27nal': {
      'en': 'Add Profile Picture',
      'it': 'Aggiungi immagine del profilo',
    },
    '18objuqt': {
      'en': 'Remove Profile Picture',
      'it': 'Rimuovi immagine del profilo',
    },
    '2gctgfnx': {
      'en': 'Username',
      'it': 'Nome utente',
    },
    'ovca9uej': {
      'en': 'Field is required',
      'it': 'Il campo è obbligatorio',
    },
    '9tyo3xzh': {
      'en': 'Please choose an option from the dropdown',
      'it': 'Si prega di selezionare un\'opzione dal menu a discesa',
    },
    '64fx4q6z': {
      'en': 'BECOME A MODIER',
      'it': 'DIVENTA UN MODIER',
    },
    '1qz5tab6': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // BirthDateScreen
  {
    '5b9q2csg': {
      'en': 'WHAT IS YOUR DATE OF BIRTH?',
      'it': 'QUAL È LA TUA DATA DI NASCITA?',
    },
    'f1xhef90': {
      'en':
          'This data assists Modie in tailoring the content you see whilst ensuring the safety of the Modie community. Your data remains confidential and will not be disclosed to any third party.',
      'it':
          'Questi dati aiutano Modie a personalizzare i contenuti che vedi, garantendo al contempo la sicurezza della comunità Modie. I tuoi dati rimangono riservati e non saranno divulgati a terze parti.',
    },
    'r4yhne1d': {
      'en': 'Birthday (DD MM YYYY)',
      'it': 'Compleanno (GG MM AAAA)',
    },
    '4sgs1j8w': {
      'en': '',
      'it': '',
    },
    'izrrlaai': {
      'en': 'NEXT',
      'it': 'PROSSIMO',
    },
    'u1xsjga1': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // LoadingScreen
  {
    'qf0bmac8': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // HomePage
  {
    '5pw8hpwk': {
      'en': '01',
      'it': '01',
    },
    'uojdqp8w': {
      'en': 'PRODUCT GUIDES',
      'it': 'GUIDE AI PRODOTTI',
    },
    'ytk7cpf4': {
      'en': 'VIEW MORE',
      'it': 'GUARDA DI PIÙ',
    },
    'odt26hb6': {
      'en': '02',
      'it': '02',
    },
    '2trqziu0': {
      'en': 'MODIERS REVIEWS',
      'it': 'RECENSIONI DI MODIERS',
    },
    'udg3o83o': {
      'en': 'VIEW REVIEW',
      'it': 'GUARDA LA RECENSIONE',
    },
    'rucauow1': {
      'en': '03',
      'it': '03',
    },
    '3320bxlq': {
      'en': 'HOTTEST PRODUCTS',
      'it': 'PRODOTTI PIÙ HOT',
    },
    '1xnlgzx4': {
      'en': 'A.L.C.',
      'it': 'A.L.C.',
    },
    'vjamkexq': {
      'en': 'NAME OF THE BRAND',
      'it': 'NOME DEL MARCHIO',
    },
    'hrivnh5g': {
      'en': 'VIEW MORE',
      'it': 'GUARDA DI PIÙ',
    },
    'o77uaxvc': {
      'en': '04',
      'it': '04',
    },
    'r1zmhjo1': {
      'en': 'PARTNER BRANDS',
      'it': 'MARCHI PARTNER',
    },
    '0q9oku8f': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // ValidationCodeScreen
  {
    'y7aeujzu': {
      'en': 'VALIDATION CODE',
      'it': 'CODICE DI VALIDAZIONE',
    },
    '058tpcot': {
      'en': 'We sent a code to your email ',
      'it': 'Abbiamo inviato un codice alla tua email',
    },
    'dnpwki0y': {
      'en': 'Code',
      'it': 'Codice',
    },
    '3jospi21': {
      'en': 'Invalid OTP',
      'it': 'OTP non valido',
    },
    '2eel97z7': {
      'en': 'Didn\'t get the code? ',
      'it': 'Non hai ricevuto il codice?',
    },
    '2j8kgoyc': {
      'en': 'Resend code',
      'it': 'Invia nuovamente il codice',
    },
    '2hih29g5': {
      'en': 'Didn\'t get the code?',
      'it': 'Non hai ricevuto il codice?',
    },
    'v6mygh4x': {
      'en': 'Resend in',
      'it': 'Invia di nuovo in',
    },
    '8qnyxoh0': {
      'en': 'CREATE NOW',
      'it': 'CREA ORA',
    },
    'knukttdw': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // ForgotPasswordScreen
  {
    '2ss5wfle': {
      'en': 'CHANGE PASSWORD',
      'it': 'CAMBIARE LA PASSWORD',
    },
    'hrohkwyj': {
      'en': 'Enter your e-mail to continue  ',
      'it': 'Inserisci la tua e-mail per continuare',
    },
    '26gow7wm': {
      'en': 'Email',
      'it': 'E-mail',
    },
    'e17jks9g': {
      'en': 'Field is required',
      'it': 'Il campo è obbligatorio',
    },
    'xskyhx39': {
      'en': 'Please choose an option from the dropdown',
      'it': 'Si prega di selezionare un\'opzione dal menu a discesa',
    },
    'c3mnnecc': {
      'en': 'Email not registered',
      'it': 'Email non registrata',
    },
    '4mezy90j': {
      'en': 'CONTINUE',
      'it': 'CONTINUARE',
    },
    'uo8k8wt1': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // ForgotPasswordValidationCodeScreen
  {
    'qeti3jja': {
      'en': 'VALIDATION CODE',
      'it': 'CODICE DI VALIDAZIONE',
    },
    'ka1jjqr3': {
      'en': 'We sent a code to your email ',
      'it': 'Abbiamo inviato un codice alla tua email',
    },
    '5pce67ch': {
      'en': 'Code',
      'it': 'Codice',
    },
    'b3rzqa1l': {
      'en': 'Didn\'t get the code? ',
      'it': 'Non hai ricevuto il codice?',
    },
    'ulm9n7sv': {
      'en': 'Resend Code',
      'it': 'Reinvia codice',
    },
    'q8i715iq': {
      'en': 'Didn\'t get the code?',
      'it': 'Non hai ricevuto il codice?',
    },
    'e7bcz21w': {
      'en': 'Resend in',
      'it': 'Invia di nuovo in',
    },
    'f3vpy6u1': {
      'en': 'CONTINUE',
      'it': 'CONTINUARE',
    },
    'fpyf8r20': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // ChangePasswordScreen
  {
    '1iysuc6o': {
      'en': 'CHANGE PASSWORD',
      'it': 'CAMBIARE LA PASSWORD',
    },
    'm2kzs8hi': {
      'en': 'Password',
      'it': 'Password',
    },
    '9w55vbj2': {
      'en': 'Does not match',
      'it': 'Non corrisponde',
    },
    'fq3t204f': {
      'en': 'Confirm Password',
      'it': 'Conferma password',
    },
    '0gshf79v': {
      'en': 'Does not match',
      'it': 'Non corrisponde',
    },
    'w73rumy6': {
      'en': 'Field is required',
      'it': 'Il campo è obbligatorio',
    },
    'n0deucim': {
      'en': 'Please choose an option from the dropdown',
      'it': 'Si prega di selezionare un\'opzione dal menu a discesa',
    },
    'hq99wd28': {
      'en': 'Field is required',
      'it': 'Il campo è obbligatorio',
    },
    'am8f8p0b': {
      'en': 'Please choose an option from the dropdown',
      'it': 'Si prega di selezionare un\'opzione dal menu a discesa',
    },
    '5gx6bifs': {
      'en': 'CHANGE NOW',
      'it': 'CAMBIA ORA',
    },
    '2f5g8kmk': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // PrivacyPolicy
  {
    '3nt13122': {
      'en': 'PRIVACY POLICY',
      'it': 'POLITICA SULLA RISERVATEZZA',
    },
    'rdzvi3yt': {
      'en':
          'Your privacy is important to us. This Privacy Policy describes how Modie, an application dedicated to selling clothing, collects, uses, and protects your personal information.',
      'it':
          'La tua privacy è importante per noi. Questa Informativa sulla privacy descrive come Modie, un\'applicazione dedicata alla vendita di abbigliamento, raccoglie, utilizza e protegge le tue informazioni personali.',
    },
    'injpp8og': {
      'en': '1. INFORMATION COLLECTED',
      'it': '1. INFORMAZIONI RACCOLTE',
    },
    '977m4e9f': {
      'en': 'Modie may collect the following types of information:',
      'it': 'Modie può raccogliere i seguenti tipi di informazioni:',
    },
    'k5htglb9': {
      'en': '- Personal Information:',
      'it': '- Informazioni personali:',
    },
    '6trs0x83': {
      'en':
          ' Name, email address, phone number, shipping address, and payment information.',
      'it':
          'Nome, indirizzo email, numero di telefono, indirizzo di spedizione e informazioni di pagamento.',
    },
    'dwmeh6fa': {
      'en': '- Browsing Information:',
      'it': '- Informazioni di navigazione:',
    },
    '4tvd21x8': {
      'en':
          ' Data on how you use our app, including pages viewed, time spent, and interactions.',
      'it':
          'Dati su come utilizzi la nostra app, tra cui pagine visualizzate, tempo trascorso e interazioni.',
    },
    'l02weait': {
      'en': '- Device Information:',
      'it': '- Informazioni sul dispositivo:',
    },
    '1rtkry9d': {
      'en':
          ' Device type, operating system, unique device identifiers, and connection data.',
      'it':
          'Tipo di dispositivo, sistema operativo, identificatori univoci del dispositivo e dati di connessione.',
    },
    'nsoikk1z': {
      'en': '2. USE OF INFORMATION',
      'it': '2. UTILIZZO DELLE INFORMAZIONI',
    },
    'j5w4vqhe': {
      'en': 'We use your information to:',
      'it': 'Utilizziamo le tue informazioni per:',
    },
    'b9gr0ppa': {
      'en': '- Order Processing: ',
      'it': '- Elaborazione degli ordini:',
    },
    'rdub6n9d': {
      'en': 'To process and deliver clothing orders placed on the app.',
      'it':
          'Per elaborare e consegnare gli ordini di abbigliamento effettuati tramite l\'app.',
    },
    'oj69ul6b': {
      'en': '- Service Improvement:  ',
      'it': '- Miglioramento del servizio:',
    },
    's218vysw': {
      'en':
          'To better understand your preferences and improve user experience.',
      'it':
          'Per comprendere meglio le tue preferenze e migliorare l\'esperienza utente.',
    },
    '5f60fjri': {
      'en': '- Communications: ',
      'it': '- Comunicazioni:',
    },
    '8qjicztk': {
      'en':
          'To send notifications about your order, promotional offers, and app updates.',
      'it':
          'Per inviare notifiche relative al tuo ordine, alle offerte promozionali e agli aggiornamenti dell\'app.',
    },
    '7ntl897h': {
      'en': '- Security: ',
      'it': '- Sicurezza:',
    },
    'dmmip6j2': {
      'en': 'To protect the integrity and security of our services and users.',
      'it':
          'Per proteggere l\'integrità e la sicurezza dei nostri servizi e dei nostri utenti.',
    },
    'xwwt13zg': {
      'en': '3. SHARING OF INFORMATION',
      'it': '3. CONDIVISIONE DELLE INFORMAZIONI',
    },
    '9gl8lbvp': {
      'en':
          'Modie does not share your personal information with third parties, except in the following situations:',
      'it':
          'Modie non condivide i tuoi dati personali con terze parti, tranne nelle seguenti situazioni:',
    },
    '4stdzaem': {
      'en': '- Service Providers: ',
      'it': '- Fornitori di servizi:',
    },
    '1quvfrb5': {
      'en':
          'Partners who assist in the operation of the app, such as payment processors and delivery services.',
      'it':
          'Partner che collaborano al funzionamento dell\'app, come gli elaboratori di pagamento e i servizi di consegna.',
    },
    'heklfcac': {
      'en': '- Legal Requirements: ',
      'it': '- Requisiti legali:',
    },
    '8gl50pmg': {
      'en':
          'When necessary to comply with legal obligations or respond to legal processes.',
      'it':
          'Quando necessario per ottemperare ad obblighi di legge o rispondere a procedimenti legali.',
    },
    'm1yj7f8z': {
      'en': '4. STORAGE AND SECURITY',
      'it': '4. ARCHIVIAZIONE E SICUREZZA',
    },
    '7tdbihpw': {
      'en':
          'Your information is securely stored on protected servers. We implement technical and organizational security measures to protect your data against unauthorized access, alteration, disclosure, or destruction.',
      'it':
          'Le tue informazioni sono archiviate in modo sicuro su server protetti. Implementiamo misure di sicurezza tecniche e organizzative per proteggere i tuoi dati da accessi non autorizzati, alterazioni, divulgazioni o distruzioni.',
    },
    'kau7tojp': {
      'en': '5. YOUR RIGHTS',
      'it': '5. I TUOI DIRITTI',
    },
    'mp2i4z5u': {
      'en': 'You have the right to:',
      'it': 'Hai il diritto di:',
    },
    'n4f1gbiq': {
      'en': '- Access: ',
      'it': '- Accesso:',
    },
    '3l4uddrp': {
      'en': 'Request a copy of the information we hold about you.',
      'it': 'Richiedi una copia delle informazioni che conserviamo su di te.',
    },
    '3ud3m77r': {
      'en': '- Correction: ',
      'it': '- Correzione:',
    },
    '82x96dww': {
      'en':
          'Request the correction of incomplete, inaccurate, or outdated data.',
      'it': 'Richiedere la correzione di dati incompleti, inesatti o obsoleti.',
    },
    'ei7uaezq': {
      'en': '- Deletion: ',
      'it': '- Cancellazione:',
    },
    'b1uepdpq': {
      'en': 'Request the deletion of your personal data, where applicable.',
      'it':
          'Richiedere la cancellazione dei tuoi dati personali, ove applicabile.',
    },
    '2lxtupf7': {
      'en': '- Withdraw Consent: ',
      'it': '- Revoca del consenso:',
    },
    'hqm4kwx9': {
      'en':
          'Withdraw consent for the processing of your data, where the legal basis is consent.',
      'it':
          'Revoca il consenso al trattamento dei tuoi dati, laddove la base giuridica è il consenso.',
    },
    'ddossve7': {
      'en': '6. CHANGE TO THIS PRIVACY POLICY',
      'it': '6. MODIFICA DELLA PRESENTE INFORMATIVA SULLA PRIVACY',
    },
    'ostmb34n': {
      'en':
          'We may update this Privacy Policy periodically. We will notify you of any changes through the app or by email.',
      'it':
          'Potremmo aggiornare periodicamente questa Informativa sulla privacy. Ti informeremo di eventuali modifiche tramite l\'app o tramite e-mail.',
    },
    'ml1f9fid': {
      'en': '7. CONTACT',
      'it': '7. CONTATTI',
    },
    '071qxhz7': {
      'en':
          'If you have any questions or concerns about this Privacy Policy or Modie\'s data practices, please contact us:',
      'it':
          'In caso di domande o dubbi sulla presente Informativa sulla privacy o sulle pratiche di Modie in materia di dati, contattateci:',
    },
    'tmfl5uww': {
      'en': '- Email: ',
      'it': '- E-mail:',
    },
    'mxtcn6el': {
      'en': 'hello@modie.co',
      'it': 'ciao@modie.co',
    },
    'q6qjp9lw': {
      'en': '- Adress: ',
      'it': '- Indirizzo:',
    },
    'ze13x4w3': {
      'en': 'Street street street',
      'it': 'Strada strada strada',
    },
    '78rlzfmd': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // StartQuiz
  {
    '8f3n592h': {
      'en': 'WHAT LIFESTYLE DO YOU LIVE?',
      'it': 'CHE STILE DI VITA CONDIVIDI?',
    },
    'pi88eco1': {
      'en':
          'Take our quiz for a personalised experience tailored to your preferences.',
      'it':
          'Rispondi al nostro quiz per un\'esperienza personalizzata in base alle tue preferenze.',
    },
    'qcc21rj8': {
      'en': 'Let\'s do it',
      'it': 'Facciamolo',
    },
    '1ajw8w84': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // QuizPage
  {
    'm8j9nyj7': {
      'en': ' — ',
      'it': '—',
    },
    'mwfb07oi': {
      'en': 'Hello World',
      'it': 'Ciao mondo',
    },
    'um1wut4p': {
      'en': '',
      'it': '',
    },
    'v1a22l0t': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // FinishQuiz
  {
    'jaiuzih3': {
      'en': '150',
      'it': '150',
    },
    '5ggu0tn1': {
      'en': 'WELCOME TO MODIE!',
      'it': 'BENVENUTI A MODIE!',
    },
    'vnsl9gqz': {
      'en':
          'As a thank you for becoming a Modier, we have given you 150 welcome points',
      'it':
          'Come ringraziamento per essere diventato un Modier, ti abbiamo dato 150 punti di benvenuto',
    },
    '2vtavthc': {
      'en': 'COLLECT REWARD',
      'it': 'RACCOGLI LA RICOMPENSA',
    },
    '0r1iufro': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // MyModie
  {
    '6rs374k7': {
      'en': 'MY MODIE',
      'it': 'LA MIA MODALITÀ',
    },
    '0mh487d3': {
      'en': 'Edit My Profile',
      'it': 'Modifica il mio profilo',
    },
    '43tdt3bg': {
      'en': 'MY MODIE DETAILS',
      'it': 'I MIEI DETTAGLI MODIE',
    },
    'beilbdpj': {
      'en': 'My Profile',
      'it': 'Il mio profilo',
    },
    'mpff3i35': {
      'en': 'My Style',
      'it': 'Il mio stile',
    },
    'veafw4h2': {
      'en': 'My Interests',
      'it': 'I miei interessi',
    },
    'ed0d9yqz': {
      'en': 'MANAGE MY ACCOUNT',
      'it': 'GESTISCI IL MIO ACCOUNT',
    },
    'mto6ec8b': {
      'en': 'Invite Other Modiers',
      'it': 'Invita altri modificatori',
    },
    'tbxcpn5c': {
      'en': 'My Order Status',
      'it': 'Stato del mio ordine',
    },
    'fp99iaoi': {
      'en': 'My Payment Method',
      'it': 'Il mio metodo di pagamento',
    },
    'djt2o7lr': {
      'en': 'My Shipping Address',
      'it': 'Il mio indirizzo di spedizione',
    },
    'p6e34zvv': {
      'en': 'APP SETTINGS',
      'it': 'IMPOSTAZIONI DELL\'APP',
    },
    'q08ltjni': {
      'en': 'Notifications',
      'it': 'Notifiche',
    },
    'r8xs6r2r': {
      'en': 'Language',
      'it': 'Lingua',
    },
    'dlhs1cb9': {
      'en': 'Terms and Conditions',
      'it': 'Termini e Condizioni',
    },
    'g0g3vch2': {
      'en': 'Privacy Policy',
      'it': 'politica sulla riservatezza',
    },
    'yxh5gyqg': {
      'en': 'FAQs',
      'it': 'Domande frequenti',
    },
    'daexp526': {
      'en': 'Need help? Please contact ',
      'it': 'Hai bisogno di aiuto? Contatta',
    },
    '70exfmb7': {
      'en': 'hello@modie.co',
      'it': 'ciao@modie.co',
    },
    '49jhextf': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // TermsConditions
  {
    '88c64mwe': {
      'en': 'TERMS & CONDITIONS ',
      'it': 'TERMINI E CONDIZIONI',
    },
    '2lmudpfq': {
      'en':
          'Your privacy is important to us. This Privacy Policy describes how Modie, an application dedicated to selling clothing, collects, uses, and protects your personal information.',
      'it':
          'La tua privacy è importante per noi. Questa Informativa sulla privacy descrive come Modie, un\'applicazione dedicata alla vendita di abbigliamento, raccoglie, utilizza e protegge le tue informazioni personali.',
    },
    'ny2zy61d': {
      'en': '1. INFORMATION COLLECTED',
      'it': '1. INFORMAZIONI RACCOLTE',
    },
    '8jbccvsl': {
      'en': 'Modie may collect the following types of information:',
      'it': 'Modie può raccogliere i seguenti tipi di informazioni:',
    },
    'cg5fhtsv': {
      'en': '- Personal Information:',
      'it': '- Informazioni personali:',
    },
    'xnm6ladd': {
      'en':
          ' Name, email address, phone number, shipping address, and payment information.',
      'it':
          'Nome, indirizzo email, numero di telefono, indirizzo di spedizione e informazioni di pagamento.',
    },
    'kcms4e16': {
      'en': '- Browsing Information:',
      'it': '- Informazioni di navigazione:',
    },
    'guch1o1k': {
      'en':
          ' Data on how you use our app, including pages viewed, time spent, and interactions.',
      'it':
          'Dati su come utilizzi la nostra app, tra cui pagine visualizzate, tempo trascorso e interazioni.',
    },
    'syimfr21': {
      'en': '- Device Information:',
      'it': '- Informazioni sul dispositivo:',
    },
    'gj0lrmyj': {
      'en':
          ' Device type, operating system, unique device identifiers, and connection data.',
      'it':
          'Tipo di dispositivo, sistema operativo, identificatori univoci del dispositivo e dati di connessione.',
    },
    'jrz70nqq': {
      'en': '2. USE OF INFORMATION',
      'it': '2. UTILIZZO DELLE INFORMAZIONI',
    },
    'a3wh907l': {
      'en': 'We use your information to:',
      'it': 'Utilizziamo le tue informazioni per:',
    },
    'ngpfp9aq': {
      'en': '- Order Processing: ',
      'it': '- Elaborazione degli ordini:',
    },
    '7ftg5r9j': {
      'en': 'To process and deliver clothing orders placed on the app.',
      'it':
          'Per elaborare e consegnare gli ordini di abbigliamento effettuati tramite l\'app.',
    },
    'slfw7jnl': {
      'en': '- Service Improvement:  ',
      'it': '- Miglioramento del servizio:',
    },
    'wup7ozyz': {
      'en':
          'To better understand your preferences and improve user experience.',
      'it':
          'Per comprendere meglio le tue preferenze e migliorare l\'esperienza utente.',
    },
    'ycn5h4bq': {
      'en': '- Communications: ',
      'it': '- Comunicazioni:',
    },
    'x464127e': {
      'en':
          'To send notifications about your order, promotional offers, and app updates.',
      'it':
          'Per inviare notifiche relative al tuo ordine, alle offerte promozionali e agli aggiornamenti dell\'app.',
    },
    'dfyyad44': {
      'en': '- Security: ',
      'it': '- Sicurezza:',
    },
    'u2tilwzm': {
      'en': 'To protect the integrity and security of our services and users.',
      'it':
          'Per proteggere l\'integrità e la sicurezza dei nostri servizi e dei nostri utenti.',
    },
    's59utuwf': {
      'en': '3. SHARING OF INFORMATION',
      'it': '3. CONDIVISIONE DELLE INFORMAZIONI',
    },
    'um3um1i6': {
      'en':
          'Modie does not share your personal information with third parties, except in the following situations:',
      'it':
          'Modie non condivide i tuoi dati personali con terze parti, tranne nelle seguenti situazioni:',
    },
    'x8mkmf6o': {
      'en': '- Service Providers: ',
      'it': '- Fornitori di servizi:',
    },
    'c9m8yrj5': {
      'en':
          'Partners who assist in the operation of the app, such as payment processors and delivery services.',
      'it':
          'Partner che collaborano al funzionamento dell\'app, come gli elaboratori di pagamento e i servizi di consegna.',
    },
    'gfcfn5bs': {
      'en': '- Legal Requirements: ',
      'it': '- Requisiti legali:',
    },
    'e7pqmny4': {
      'en':
          'When necessary to comply with legal obligations or respond to legal processes.',
      'it':
          'Quando necessario per ottemperare ad obblighi di legge o rispondere a procedimenti legali.',
    },
    '052v9mln': {
      'en': '4. STORAGE AND SECURITY',
      'it': '4. ARCHIVIAZIONE E SICUREZZA',
    },
    'nue1uxvw': {
      'en':
          'Your information is securely stored on protected servers. We implement technical and organizational security measures to protect your data against unauthorized access, alteration, disclosure, or destruction.',
      'it':
          'Le tue informazioni sono archiviate in modo sicuro su server protetti. Implementiamo misure di sicurezza tecniche e organizzative per proteggere i tuoi dati da accessi non autorizzati, alterazioni, divulgazioni o distruzioni.',
    },
    'qk288icc': {
      'en': '5. YOUR RIGHTS',
      'it': '5. I TUOI DIRITTI',
    },
    'pumfuclt': {
      'en': 'You have the right to:',
      'it': 'Hai il diritto di:',
    },
    'jf9hwdt5': {
      'en': '- Access: ',
      'it': '- Accesso:',
    },
    '6xztojrx': {
      'en': 'Request a copy of the information we hold about you.',
      'it': 'Richiedi una copia delle informazioni che conserviamo su di te.',
    },
    '8rzgj8ep': {
      'en': '- Correction: ',
      'it': '- Correzione:',
    },
    'hzm8gtd1': {
      'en':
          'Request the correction of incomplete, inaccurate, or outdated data.',
      'it': 'Richiedere la correzione di dati incompleti, inesatti o obsoleti.',
    },
    '77q2n564': {
      'en': '- Deletion: ',
      'it': '- Cancellazione:',
    },
    '7z9rhxtk': {
      'en': 'Request the deletion of your personal data, where applicable.',
      'it':
          'Richiedere la cancellazione dei tuoi dati personali, ove applicabile.',
    },
    'ntgamef4': {
      'en': '- Withdraw Consent: ',
      'it': '- Revoca del consenso:',
    },
    '8f46ru3g': {
      'en':
          'Withdraw consent for the processing of your data, where the legal basis is consent.',
      'it':
          'Revoca il consenso al trattamento dei tuoi dati, laddove la base giuridica è il consenso.',
    },
    'o5xd8u6d': {
      'en': '6. CHANGE TO THIS PRIVACY POLICY',
      'it': '6. MODIFICA DELLA PRESENTE INFORMATIVA SULLA PRIVACY',
    },
    'jtuf1co0': {
      'en':
          'We may update this Privacy Policy periodically. We will notify you of any changes through the app or by email.',
      'it':
          'Potremmo aggiornare periodicamente questa Informativa sulla privacy. Ti informeremo di eventuali modifiche tramite l\'app o tramite e-mail.',
    },
    'ox8ouu4a': {
      'en': '7. CONTACT',
      'it': '7. CONTATTI',
    },
    '11kqswiz': {
      'en':
          'If you have any questions or concerns about this Privacy Policy or Modie\'s data practices, please contact us:',
      'it':
          'In caso di domande o dubbi sulla presente Informativa sulla privacy o sulle pratiche di Modie in materia di dati, contattateci:',
    },
    'kxufxhem': {
      'en': '- Email: ',
      'it': '- E-mail:',
    },
    'd3qz4a4c': {
      'en': 'hello@modie.co',
      'it': 'ciao@modie.co',
    },
    '8acpjkdd': {
      'en': '- Adress: ',
      'it': '- Indirizzo:',
    },
    'oawgb322': {
      'en': 'Street street street',
      'it': 'Strada strada strada',
    },
    'cflezbdp': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // MyModie_Profile
  {
    '3u59z3l9': {
      'en': 'MY PROFILE',
      'it': 'IL MIO PROFILO',
    },
    'hd5o26ia': {
      'en': 'First Name',
      'it': 'Nome di battesimo',
    },
    'fchgwt8k': {
      'en': 'Surname',
      'it': 'Cognome',
    },
    '12rtcmgs': {
      'en': 'Username',
      'it': 'Nome utente',
    },
    'yxlbbjb8': {
      'en': 'This username is already in use',
      'it': 'Questo nome utente è già in uso',
    },
    '6oaklsam': {
      'en': 'Date (DD MM YYYY)',
      'it': 'Data (GG MM AAAA)',
    },
    'bk7h41fl': {
      'en': '',
      'it': '',
    },
    'qejrtdh1': {
      'en': 'Email',
      'it': 'E-mail',
    },
    'u3enyp43': {
      'en': 'Write something about you...',
      'it': 'Scrivi qualcosa su di te...',
    },
    'v7kbjahl': {
      'en': 'SAVE CHANGES',
      'it': 'SALVA LE MODIFICHE',
    },
    'xqu0vs6v': {
      'en': 'My Style',
      'it': 'Il mio stile',
    },
    'vv2sac76': {
      'en': 'My Interests',
      'it': 'I miei interessi',
    },
    'jaz9t7c6': {
      'en': 'Do you want to delete your account? ',
      'it': 'Vuoi eliminare il tuo account?',
    },
    'ngne2im5': {
      'en': 'Click here',
      'it': 'clicca qui',
    },
    'qyhq258m': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // MyModie_Invite
  {
    'd8w34m48': {
      'en': 'INVITE',
      'it': 'INVITARE',
    },
    'ntpy7i9c': {
      'en': 'INVITE FRIENDS TO JOIN MODIE',
      'it': 'INVITA GLI AMICI A UNIRSI A MODIE',
    },
    '08hfndi0': {
      'en':
          'WE\'RE HERE TO SUPPORT YOUR JOURNEY TOWARDS PURPOSEFUL LIVING BY REWARDING YOUR CONTRIBUTIONS TO THE MODIE COMMUNITY',
      'it':
          'SIAMO QUI PER SUPPORTARE IL TUO PERCORSO VERSO UNA VITA CON UNO SCOPO PREMIANDO I TUOI CONTRIBUTI ALLA COMUNITÀ MODIE',
    },
    'koqa88yv': {
      'en': 'Each invite code can be used once.',
      'it': 'Ogni codice invito può essere utilizzato una sola volta.',
    },
    'pd8n29vr': {
      'en': 'To generate a new code, please revisit this screen.',
      'it': 'Per generare un nuovo codice, visita nuovamente questa schermata.',
    },
    '9i7l787t': {
      'en': 'What happens next?',
      'it': 'Cosa succederà ora?',
    },
    'btin1xao': {
      'en':
          'Both you and your friend will receive 50 bonus points when they sign up',
      'it':
          'Sia tu che il tuo amico riceverete 50 punti bonus quando si iscriveranno',
    },
    '5djpkijn': {
      'en': 'SHARE CODE',
      'it': 'CONDIVIDI CODICE',
    },
    'sfdyvtq0': {
      'en': 'Copy Code',
      'it': 'Copia il codice',
    },
    'i2npe7g1': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // QuizProfile
  {
    'hcjpa7ga': {
      'en': ' — ',
      'it': '—',
    },
    'wzr4dobf': {
      'en': 'Hello World',
      'it': 'Ciao mondo',
    },
    'tbgv7tdt': {
      'en': '',
      'it': '',
    },
    'r9kf8a6a': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // MyShippingAdress
  {
    '87jgzoyh': {
      'en': 'MY SHIPPING ADDRESS',
      'it': 'IL MIO INDIRIZZO DI SPEDIZIONE',
    },
    'vsh1nz8m': {
      'en': 'ADD ADDRESS',
      'it': 'AGGIUNGI INDIRIZZO',
    },
    'jzh7ywty': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // AddAdress
  {
    'prc2r6nl': {
      'en': 'ADD NEW ADDRESS',
      'it': 'AGGIUNGI NUOVO INDIRIZZO',
    },
    'abdw5h3f': {
      'en': 'First Name',
      'it': 'Nome di battesimo',
    },
    'cqu87v37': {
      'en': 'Field is required',
      'it': 'Il campo è obbligatorio',
    },
    'x3kjzm9q': {
      'en': 'Surname',
      'it': 'Cognome',
    },
    '7jmovf8t': {
      'en': 'Field is required',
      'it': 'Il campo è obbligatorio',
    },
    'lrgiern1': {
      'en': 'Dialing Code',
      'it': 'Prefisso telefonico',
    },
    '1ofgeumq': {
      'en': 'Field is required',
      'it': 'Il campo è obbligatorio',
    },
    'e7h0h1vl': {
      'en': 'Phone',
      'it': 'Telefono',
    },
    'g0rsauuh': {
      'en': 'Field is required',
      'it': 'Il campo è obbligatorio',
    },
    'lb0hcv5s': {
      'en': 'USE MY CURRENT LOCATION',
      'it': 'USA LA MIA POSIZIONE ATTUALE',
    },
    'gnjuywan': {
      'en': 'Address Line 1',
      'it': 'Indirizzo Linea 1',
    },
    'viin7zxe': {
      'en': 'Field is required',
      'it': 'Il campo è obbligatorio',
    },
    'krol4k5u': {
      'en': 'Address Line 2 (Optional)',
      'it': 'Indirizzo riga 2 (facoltativo)',
    },
    'rwdcae9b': {
      'en': 'City / Town',
      'it': 'Città / Paese',
    },
    '95ug2zy0': {
      'en': 'Field is required',
      'it': 'Il campo è obbligatorio',
    },
    'zd47x32u': {
      'en': 'Postcode',
      'it': 'Codice postale',
    },
    'xz5kz54f': {
      'en': 'Field is required',
      'it': 'Il campo è obbligatorio',
    },
    '2oq4vgm9': {
      'en': 'Country',
      'it': 'Paese',
    },
    'hu2juj2i': {
      'en': 'Field is required',
      'it': 'Il campo è obbligatorio',
    },
    'ekck0f2z': {
      'en': 'SAVE ADDRESS',
      'it': 'SALVA INDIRIZZO',
    },
    'txvetus9': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // QuizProfileCopy
  {
    '8cqahes3': {
      'en': ' — ',
      'it': '—',
    },
    'leglavxt': {
      'en': 'Hello World',
      'it': 'Ciao mondo',
    },
    'bdd8d31e': {
      'en': '',
      'it': '',
    },
    'etii8kc7': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // LanguagePage
  {
    'pw38c7o3': {
      'en': 'LANGUAGE',
      'it': 'LINGUA',
    },
    'zzq56xoh': {
      'en': 'Please select your preferred language.',
      'it': 'Seleziona la lingua preferita.',
    },
    '7skce31t': {
      'en': 'English',
      'it': 'Inglese',
    },
    'zxre2trt': {
      'en': 'Italian',
      'it': 'Italiano',
    },
    'dz28kq50': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // Notifications
  {
    'xuv7dgfq': {
      'en': 'NOTIFICATIONS',
      'it': 'NOTIFICHE',
    },
    'ogkrlhx0': {
      'en': 'Manage your alerts',
      'it': 'Gestisci i tuoi avvisi',
    },
    'tt922l5f': {
      'en': 'Order updates',
      'it': 'Aggiornamenti degli ordini',
    },
    '9r2j74tb': {
      'en': 'Promotions & sales',
      'it': 'Promozioni e saldi',
    },
    's4eh38yd': {
      'en': 'New brands',
      'it': 'Nuovi marchi',
    },
    '0q4q1ikv': {
      'en': 'New product guides',
      'it': 'Nuove guide ai prodotti',
    },
    'iij8fr4m': {
      'en': 'Approval of your review',
      'it': 'Approvazione della tua recensione',
    },
    'xryd7aau': {
      'en': 'Content download',
      'it': 'Scaricamento dei contenuti',
    },
    '3kp8um8z': {
      'en': 'Pre-order alert',
      'it': 'Avviso di pre-ordine',
    },
    'f4pd5vrz': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // FAQs
  {
    'curpy294': {
      'en': 'FAQS',
      'it': 'Domande frequenti',
    },
    'oqhehfgo': {
      'en': 'Couldn’t find what you were looking for?',
      'it': 'Non hai trovato quello che cercavi?',
    },
    'mpj7266j': {
      'en': 'Feel free to contact us at ',
      'it': 'Non esitate a contattarci a',
    },
    'ja77fsan': {
      'en': 'hello@modie.co',
      'it': 'ciao@modie.co',
    },
    '94s4ydor': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // LoadPage
  {
    'jqy95btn': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // MyPaymentsCards
  {
    '1miu63s3': {
      'en': 'MY PAYMENT METHOD',
      'it': 'IL MIO INDIRIZZO DI SPEDIZIONE',
    },
    'e1s5ehhr': {
      'en': 'Home',
      'it': '',
    },
  },
  // ExploreProduct
  {
    'd0kltzcu': {
      'en': 'MODIE REVIEWS',
      'it': 'AGGIUNGI NUOVO INDIRIZZO',
    },
    'c6evdsel': {
      'en': '',
      'it': '',
    },
    '6jf6smmv': {
      'en': 'OVERALL SCORE',
      'it': '',
    },
    'm1bth1hb': {
      'en': '  (i)',
      'it': '',
    },
    'r32hqohd': {
      'en': 'DURABILITY',
      'it': '',
    },
    'pg3s6jqk': {
      'en': 'SIZE & FIT',
      'it': '',
    },
    'j367vlg4': {
      'en': 'VERSATILITY',
      'it': '',
    },
    'ybgyl7s8': {
      'en': 'FUNCTIONALITY',
      'it': '',
    },
    'hf085vx9': {
      'en': 'VALUE FOR MONEY',
      'it': '',
    },
    'e90plw5j': {
      'en': 'COLOUR: ',
      'it': '',
    },
    'gundkt3s': {
      'en': 'SIZE & FIT: ',
      'it': '',
    },
    '3taxh3gh': {
      'en': 'SIZE GUIDE',
      'it': '',
    },
    'hytuxdj5': {
      'en': 'S',
      'it': '',
    },
    'dpalsv5p': {
      'en': 'M',
      'it': '',
    },
    '4jcwlvle': {
      'en': 'L',
      'it': '',
    },
    '8qbtx6ob': {
      'en': 'XL',
      'it': '',
    },
    't64sw9cv': {
      'en': 'XXL',
      'it': '',
    },
    'zgxycqcn': {
      'en': 'XXXL',
      'it': '',
    },
    '1hq4bs69': {
      'en': 'PRODUCT DOSSIER',
      'it': '',
    },
    'l5dofwze': {
      'en': 'SPECIFICS',
      'it': '',
    },
    '7mbqv4t2': {
      'en': 'SPECIFICS',
      'it': '',
    },
    '1toejhjv': {
      'en': 'COMPOSITION',
      'it': '',
    },
    'dpdj48q0': {
      'en': 'COMPOSITION',
      'it': '',
    },
    '188kiosl': {
      'en': 'CARE INSTRUCTIONS',
      'it': '',
    },
    'y0h4xlic': {
      'en': 'CARE INSTRUCTIONS',
      'it': '',
    },
    'm7fs1urv': {
      'en': 'DELIVERY & REPAIR INSTRUCTIONS',
      'it': '',
    },
    '66bftxxk': {
      'en': 'DELIVERY & REPAIR INSTRUCTIONS',
      'it': '',
    },
    'o0qi9xqw': {
      'en': 'FIND OUT MORE',
      'it': '',
    },
    'hk4nr93i': {
      'en': 'ENVIRONMENTAL IMPACT',
      'it': '',
    },
    'je44k3qb': {
      'en': 'PRODUCT IN ACTION',
      'it': '',
    },
    'v4h5yh89': {
      'en': '@username',
      'it': '',
    },
    'xm5yb04z': {
      'en': 'WHAT MODIERS SAID',
      'it': '',
    },
    'qx26s81r': {
      'en': 'Newest',
      'it': '',
    },
    'w93yebb1': {
      'en': '',
      'it': '',
    },
    'p5u4eazq': {
      'en': 'Search...',
      'it': '',
    },
    'e3ijj8hf': {
      'en': 'Newest',
      'it': '',
    },
    'bux4s56a': {
      'en': 'Oldest',
      'it': '',
    },
    'nrp8ytmy': {
      'en': '1',
      'it': '',
    },
    'n54nid96': {
      'en': '2',
      'it': '',
    },
    'pphv4odk': {
      'en': '3',
      'it': '',
    },
    'voqgotfe': {
      'en': '4',
      'it': '',
    },
    'k2jgkz0i': {
      'en': '5',
      'it': '',
    },
    '0ypw57mp': {
      'en': 'ADD TO THE CART',
      'it': '',
    },
    'e51hg9uf': {
      'en': 'Home',
      'it': '',
    },
  },
  // ExplorePage
  {
    'hw8xkiqd': {
      'en': '01',
      'it': '01',
    },
    'kece7zhw': {
      'en': 'PRODUCT GUIDES',
      'it': 'GUIDE AI PRODOTTI',
    },
    '0619l5p2': {
      'en': '02',
      'it': '02',
    },
    'e1eu9fay': {
      'en': 'OUR ',
      'it': 'GUIDE AI ',
    },
    'd4ol55og': {
      'en': 'BRANDS',
      'it': 'PRODOTTI',
    },
    'iqq0icbp': {
      'en': '03',
      'it': '03',
    },
    '20zj5mes': {
      'en': 'FAVOURITES',
      'it': 'PREFERITI',
    },
    'sokql5vi': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // ScoringGuide
  {
    'yk8un0lj': {
      'en': 'SCORING GUIDE',
      'it': 'AGGIUNGI NUOVO INDIRIZZO',
    },
    '3jgkkogm': {
      'en': 'OVERALL SCORE',
      'it': '',
    },
    'c9rlkymz': {
      'en': 'SCORE 1: ',
      'it': '',
    },
    '16ou9c2q': {
      'en': ' Doesn\'t meet expectations',
      'it': '',
    },
    '7h3smu7u': {
      'en': 'SCORE 2: ',
      'it': '',
    },
    'gzparzli': {
      'en': ' Bellow expectations',
      'it': '',
    },
    'l9aymq26': {
      'en': 'SCORE 3: ',
      'it': '',
    },
    'n9fep138': {
      'en': ' Meets expectations partially',
      'it': '',
    },
    '6791sllb': {
      'en': 'SCORE 4: ',
      'it': '',
    },
    '00uns1kw': {
      'en': ' Nearly meets expectations',
      'it': '',
    },
    '705vrqst': {
      'en': 'SCORE 5: ',
      'it': '',
    },
    't1xr3jpn': {
      'en': ' Fully meets expectations',
      'it': '',
    },
    '3d0vjy8i': {
      'en': 'DURABILITY',
      'it': '',
    },
    'agfnqtex': {
      'en': 'SCORE 1: ',
      'it': '',
    },
    'ntst9syz': {
      'en': ' Very poor',
      'it': '',
    },
    'zjy5ryqk': {
      'en': 'SCORE 2: ',
      'it': '',
    },
    'sf2kmjo4': {
      'en': ' Poor',
      'it': '',
    },
    'f7kaleqo': {
      'en': 'SCORE 3: ',
      'it': '',
    },
    '37mi2mfl': {
      'en': ' Average',
      'it': '',
    },
    'nw2bnaef': {
      'en': 'SCORE 4: ',
      'it': '',
    },
    'sz556hfl': {
      'en': ' Good',
      'it': '',
    },
    '1yloflh4': {
      'en': 'SCORE 5: ',
      'it': '',
    },
    'oumfhm7g': {
      'en': ' Excellent',
      'it': '',
    },
    'bhbh8z0g': {
      'en': 'SIZE & FIT',
      'it': '',
    },
    '7yg5147i': {
      'en': 'SCORE 1: ',
      'it': '',
    },
    'ga8wnch3': {
      'en':
          ' Far from true to fit i.e. significantly smaller or larger than expected',
      'it': '',
    },
    'okpdpfir': {
      'en': 'SCORE 2: ',
      'it': '',
    },
    '15ia1mf3': {
      'en':
          ' Below average fit i.e. slightly smaller or larger than expected, resulting in minor issues with fit or comfort',
      'it': '',
    },
    'wskety8g': {
      'en': 'SCORE 3: ',
      'it': '',
    },
    'r2924pzz': {
      'en':
          ' True to fit i.e. matching the expected size, within the standard sizing norms, fitting most people comfortably',
      'it': '',
    },
    'igd7baou': {
      'en': 'SCORE 4: ',
      'it': '',
    },
    'bpm16600': {
      'en':
          ' Above average fit i.e. slightly smaller or larger than expected, fitting most people comfortably with minor adjustments',
      'it': '',
    },
    'cz460ibt': {
      'en': 'SCORE 5: ',
      'it': '',
    },
    'pgf1v71t': {
      'en': ' Perfect fit i.e. no need for adjustments',
      'it': '',
    },
    'ukhy26kt': {
      'en': 'VERSATIBILITY',
      'it': '',
    },
    'mtmanxqh': {
      'en': '(ABILITY TO BE USED IN MULTIPLE WAYS/ OCCASIONS)',
      'it': '',
    },
    'cw99sn89': {
      'en': 'SCORE 1: ',
      'it': '',
    },
    '8hoaa646': {
      'en': ' Extremely limited',
      'it': '',
    },
    'qd35n6b9': {
      'en': 'SCORE 2: ',
      'it': '',
    },
    'rgp6siml': {
      'en': ' Very low',
      'it': '',
    },
    'w702i06f': {
      'en': 'SCORE 3: ',
      'it': '',
    },
    'jwynutya': {
      'en': ' Below average',
      'it': '',
    },
    'zv3wx1s3': {
      'en': 'SCORE 4: ',
      'it': '',
    },
    'l0yoogu0': {
      'en': ' Moderate',
      'it': '',
    },
    '8hg1xu4b': {
      'en': 'SCORE 5: ',
      'it': '',
    },
    '4roq7uye': {
      'en': ' Exceptional',
      'it': '',
    },
    '6icfeakn': {
      'en': 'FUNCTIONALITY',
      'it': '',
    },
    'ej67lzu5': {
      'en': '(CONFORT AND EASE OF CARE)',
      'it': '',
    },
    'mlf3l9lx': {
      'en': 'SCORE 1: ',
      'it': '',
    },
    'skgnzbas': {
      'en': ' Non functional',
      'it': '',
    },
    'bbi8ocea': {
      'en': 'SCORE 2: ',
      'it': '',
    },
    'wqbfbzt9': {
      'en': ' Poor',
      'it': '',
    },
    'zjw8uwj2': {
      'en': 'SCORE 3: ',
      'it': '',
    },
    'kc20wiwz': {
      'en': ' Average',
      'it': '',
    },
    '1s0w7g63': {
      'en': 'SCORE 4: ',
      'it': '',
    },
    'dgmw7ibr': {
      'en': ' Good',
      'it': '',
    },
    'o92q70xd': {
      'en': 'SCORE 5: ',
      'it': '',
    },
    '8zjy19g6': {
      'en': ' Excellent',
      'it': '',
    },
    'yefjq4xb': {
      'en': 'VALUE FOR MONEY',
      'it': '',
    },
    'ux9festw': {
      'en': 'SCORE 1: ',
      'it': '',
    },
    'emaewlsc': {
      'en': ' Very poor',
      'it': '',
    },
    'po63xrv3': {
      'en': 'SCORE 2: ',
      'it': '',
    },
    '6tb9w1nz': {
      'en': ' Poor',
      'it': '',
    },
    'x6tjzhkq': {
      'en': 'SCORE 3: ',
      'it': '',
    },
    '6bqmtc8y': {
      'en': ' Average',
      'it': '',
    },
    'u3c7u4od': {
      'en': 'SCORE 4: ',
      'it': '',
    },
    'dibgjw3r': {
      'en': ' Good',
      'it': '',
    },
    'wir5dqw5': {
      'en': 'SCORE 5: ',
      'it': '',
    },
    'j4y4iqp7': {
      'en': ' Excellent',
      'it': '',
    },
    'ff6e26ih': {
      'en': 'Home',
      'it': '',
    },
  },
  // MyFavourites
  {
    'apc2oyh3': {
      'en': 'MY FAVOURITES',
      'it': '',
    },
    'i6a6dth2': {
      'en': 'Fashion',
      'it': '',
    },
    'j7tlt4vz': {
      'en': 'Jewellery',
      'it': '',
    },
    'a5nentzp': {
      'en': 'Fashion',
      'it': '',
    },
    'rkixlbox': {
      'en': 'OVERALL',
      'it': '',
    },
    'ycl7k3s1': {
      'en': 'Home',
      'it': '',
    },
  },
  // ProductGuide
  {
    'i40grw8g': {
      'en': 'PRODUCT GUIDES',
      'it': '',
    },
    'xyy79956': {
      'en': 'Lifestyle',
      'it': '',
    },
    'jy7xy8ez': {
      'en': 'Luxury',
      'it': '',
    },
    'bayvaoww': {
      'en': 'Minimalist',
      'it': '',
    },
    'gt4rvqya': {
      'en': 'Wellness',
      'it': '',
    },
    'qo8zxf8c': {
      'en': 'Bohemian',
      'it': '',
    },
    'wmjxbig1': {
      'en': 'Outdoorsy',
      'it': '',
    },
    'yluhg7ep': {
      'en': 'Luxury',
      'it': '',
    },
    'ncvu0y23': {
      'en': 'Home',
      'it': '',
    },
  },
  // ExploreReviews
  {
    'w1uztyn5': {
      'en': 'MODIE REVIEWS',
      'it': '',
    },
    'prjgkvxt': {
      'en': 'Home',
      'it': '',
    },
  },
  // ExploreArticlesPage
  {
    'q5sue31a': {
      'en': 'PRODUCT GUIDES',
      'it': '',
    },
    '5cfjikqu': {
      'en':
          'Lorem ipsum dolor sit amet consectetur. Congue tristique risus mi nunc mi risus.',
      'it': '',
    },
    'vsk3spm3': {
      'en': 'TAILORED TO ',
      'it': '',
    },
    'd8hvnb7o': {
      'en': 'MY STYLE',
      'it': '',
    },
    's964ad58': {
      'en': 'SEE MODIE REVIEWS',
      'it': '',
    },
    'g5n9isxf': {
      'en': 'A.L.C.',
      'it': '',
    },
    'wjblambu': {
      'en': 'Axel Satin-Crepe Blazer',
      'it': '',
    },
    'qbux7bau': {
      'en': '£120',
      'it': '',
    },
    '9me0yqg1': {
      'en': 'OTHER STYLES ',
      'it': '',
    },
    'veng8owz': {
      'en': 'YOU MAY LIKE',
      'it': '',
    },
    'k55oisgp': {
      'en': 'SEE MODIE REVIEWS',
      'it': '',
    },
    '2czku43w': {
      'en': 'Home',
      'it': '',
    },
  },
  // MyOrderStatus
  {
    'p63fbuzw': {
      'en': 'MY ORDER STATUS',
      'it': '',
    },
    'ssbthaze': {
      'en': 'All',
      'it': '',
    },
    'eu0y1pud': {
      'en': 'Out for Delivery',
      'it': '',
    },
    '5xyd3vx6': {
      'en': 'Delivered',
      'it': '',
    },
    'n8wkpwjt': {
      'en': 'Returned',
      'it': '',
    },
    'ce0w1ox9': {
      'en': 'Exchanged',
      'it': '',
    },
    '6p9y06ec': {
      'en': 'All',
      'it': '',
    },
    'br6d4tr7': {
      'en': 'Nº6381092',
      'it': '',
    },
    'nhnmub7e': {
      'en': 'In process',
      'it': '',
    },
    'gi0a6oh4': {
      'en': '23 Item(s)',
      'it': '',
    },
    'ym20e2q0': {
      'en': 'Total: £128.42',
      'it': '',
    },
    'xaf2660i': {
      'en': 'Track my order',
      'it': '',
    },
    'dnr7m5p9': {
      'en': 'Purchased on: 23/12/2024',
      'it': '',
    },
    'z13z17sc': {
      'en': '+ 18',
      'it': '',
    },
    'q2ykqzyg': {
      'en': 'SEE DETAILS',
      'it': '',
    },
    'd6lg210o': {
      'en': 'Nº6381092',
      'it': '',
    },
    'cdc0lya4': {
      'en': 'In process',
      'it': '',
    },
    'j71y6qj0': {
      'en': '23 Item(s)',
      'it': '',
    },
    '5o7a5n5l': {
      'en': 'Total: £128.42',
      'it': '',
    },
    'rtg09m9c': {
      'en': 'Track my order',
      'it': '',
    },
    'jep0qx1w': {
      'en': 'Purchased on: 23/12/2024',
      'it': '',
    },
    'tzt0p2ap': {
      'en': '+ 18',
      'it': '',
    },
    '2s8kb7kr': {
      'en': 'SEE DETAILS',
      'it': '',
    },
    'yggq7m0c': {
      'en': 'Contact Modie',
      'it': '',
    },
    'xk8kqfgy': {
      'en': 'Home',
      'it': '',
    },
  },
  // MyOrder
  {
    'u65vext6': {
      'en': 'MY ORDER',
      'it': '',
    },
    'fgzt7bfy': {
      'en': 'Nº6381092',
      'it': '',
    },
    'qupsrznm': {
      'en': 'Out for Delivery',
      'it': '',
    },
    'oovyk8vh': {
      'en': 'A.L.C.',
      'it': '',
    },
    'rjll4lfo': {
      'en': 'AXEL SATIN-CREPE BLAZER',
      'it': '',
    },
    'c47u4psi': {
      'en': 'COLOUR: ',
      'it': '',
    },
    'iyfm5fg3': {
      'en': 'Beige',
      'it': '',
    },
    'oj9opgrj': {
      'en': 'SIZE: ',
      'it': '',
    },
    'zpmq5pqd': {
      'en': 'S',
      'it': '',
    },
    'kyar1r5i': {
      'en': 'QUANTITY: ',
      'it': '',
    },
    'e64m0mwo': {
      'en': '2',
      'it': '',
    },
    '8si6jxgd': {
      'en': '£120',
      'it': '',
    },
    'arqv2oi2': {
      'en': 'each \$120',
      'it': '',
    },
    'c8jgcl94': {
      'en': 'TOTAL ',
      'it': '',
    },
    '3o6vaoty': {
      'en': ' VAT inclusive',
      'it': '',
    },
    '7vuuf4xt': {
      'en': '£123,43',
      'it': '',
    },
    'oo8oprze': {
      'en': 'Track my order',
      'it': '',
    },
    'q31da60n': {
      'en': 'Purchased on: 23/12/2024',
      'it': '',
    },
    'kt100gyn': {
      'en': 'Home',
      'it': '',
    },
  },
  // ReturnSelect
  {
    'uuzb05xr': {
      'en': 'MY ORDER',
      'it': '',
    },
    '25blejqq': {
      'en': 'SELECT THE ITEMS YOU WISH TO RETURN / EXCHANGE',
      'it': '',
    },
    '856m8asm': {
      'en': '',
      'it': '',
    },
    '8yuwjfdc': {
      'en': 'A.L.C.',
      'it': '',
    },
    'j0k3rjb8': {
      'en': 'AXEL SATIN-CREPE BLAZER',
      'it': '',
    },
    'txlivdgn': {
      'en': 'COLOUR: ',
      'it': '',
    },
    'x2ojr9g7': {
      'en': 'Beige',
      'it': '',
    },
    'j5y7n8f5': {
      'en': 'SIZE: ',
      'it': '',
    },
    'txwy52j0': {
      'en': 'S',
      'it': '',
    },
    'glpxrv68': {
      'en': 'QUANTITY: ',
      'it': '',
    },
    'dlhoraar': {
      'en': '2',
      'it': '',
    },
    'jh4gelc5': {
      'en': '£120',
      'it': '',
    },
    'g8a92sr4': {
      'en': 'each £120',
      'it': '',
    },
    '0vvo7m18': {
      'en': 'CONTINUE',
      'it': '',
    },
    '547fx4bc': {
      'en': 'Cancel',
      'it': '',
    },
    'suba2xqw': {
      'en': 'Home',
      'it': '',
    },
  },
  // ReturnForm
  {
    'qc425o3z': {
      'en': 'REASON FOR RETURN',
      'it': '',
    },
    'tnc5zlna': {
      'en': 'WHY DO YOU WANT TO RETURN THE ITEM?',
      'it': '',
    },
    '3xhotlok': {
      'en': 'Incorrect Size/Fit',
      'it': '',
    },
    'u7ujmij2': {
      'en': 'Lack of Versability',
      'it': '',
    },
    'tu0e91de': {
      'en': 'Functional Defects',
      'it': '',
    },
    'wdxt0ot4': {
      'en': 'Poor Value for Money',
      'it': '',
    },
    'ae94514h': {
      'en': 'Defective or Damaged',
      'it': '',
    },
    '162yvubh': {
      'en': 'Changed Mind',
      'it': '',
    },
    'cg0av0fe': {
      'en': 'Item Not as Described',
      'it': '',
    },
    '066jb9df': {
      'en': 'Wrong Item',
      'it': '',
    },
    'pmnvm8j9': {
      'en': 'Late Delivery',
      'it': '',
    },
    'uuhrmev7': {
      'en': 'Other',
      'it': '',
    },
    'm6ny6kuc': {
      'en': 'Write something...',
      'it': 'Scrivi qualcosa su di te...',
    },
    'eduqrrsr': {
      'en': 'CONTINUE',
      'it': '',
    },
    'vfwytxof': {
      'en': 'Home',
      'it': '',
    },
  },
  // OurBrands
  {
    'slrczpvx': {
      'en': 'OUR BRANDS',
      'it': '',
    },
    'wxxoli2d': {
      'en': 'Fashion',
      'it': '',
    },
    's742fn4o': {
      'en': 'Jewellery',
      'it': '',
    },
    'r54phlw1': {
      'en': 'Fashion',
      'it': '',
    },
    'zc2e9s91': {
      'en': 'Home',
      'it': '',
    },
  },
  // OurBrandsInfo
  {
    '39y4w0md': {
      'en': 'OUR BRANDS',
      'it': 'I NOSTRI MARCHI',
    },
    'satxh2dk': {
      'en': 'BRAND DETAILS',
      'it': 'DETTAGLI DEL MARCHIO',
    },
    'thh0tu7p': {
      'en': 'OFFERING:',
      'it': 'OFFERTA:',
    },
    'qn75cq1b': {
      'en': 'LOCATED IN:',
      'it': 'SITUATO IN:',
    },
    'wpvt8lzb': {
      'en': 'PHILOSOPHY',
      'it': 'FILOSOFIA',
    },
    'q1lgyg2s': {
      'en': 'MISSION:',
      'it': 'MISSIONE:',
    },
    'x3r9qklz': {
      'en': 'VISION:',
      'it': 'VISIONE:',
    },
    '3ud42ctn': {
      'en': 'STORY',
      'it': 'STORIA',
    },
    'x1xc971y': {
      'en': 'FOUNDING TEAM',
      'it': 'TEAM FONDATORE',
    },
    'kdu70tq9': {
      'en': 'ENVIRONMENTAL RESPONSIBILITY',
      'it': 'RESPONSABILITÀ AMBIENTALE',
    },
    'xehef7a8': {
      'en': 'MANUFACTURING PRACTICES',
      'it': 'PRATICHE DI PRODUZIONE',
    },
    'enqle66s': {
      'en': 'Waste Generation',
      'it': 'Generazione di rifiuti',
    },
    'g3zr2u2m': {
      'en': 'Water Conservation',
      'it': 'Conservazione dell\'acqua',
    },
    'zq96foaz': {
      'en': 'Energy Use in Production',
      'it': 'Utilizzo dell\'energia nella produzione',
    },
    'sf8xdk33': {
      'en': 'Product\'s Carbon Footprint Measurement',
      'it': 'Misurazione dell\'impronta di carbonio del prodotto',
    },
    'fqxebbcg': {
      'en': 'MATERIALS AND PACKAGING',
      'it': 'MATERIALI E IMBALLAGGIO',
    },
    'dck5h7qr': {
      'en': 'Use of Certified Materials',
      'it': 'Utilizzo di materiali certificati',
    },
    '54jjo257': {
      'en': 'Packaging',
      'it': 'Confezione',
    },
    'myyoh6dg': {
      'en': 'SUPPLY CHAIN AND PRODUCTION',
      'it': 'CATENA DI FORNITURA E PRODUZIONE',
    },
    '8mvdmeuk': {
      'en': 'Local Production',
      'it': 'Produzione locale',
    },
    '1jxtweqb': {
      'en': 'Transparency and Traceability in Supply Chain',
      'it': 'Trasparenza e tracciabilità nella catena di fornitura',
    },
    'w7el0uh8': {
      'en': 'PRODUCT PRODUCTION',
      'it': 'PRODUZIONE DEL PRODOTTO',
    },
    'itlk48f5': {
      'en': 'MATERIALS:',
      'it': 'MATERIALI:',
    },
    'hgiqv8qy': {
      'en': 'PARTNERS:',
      'it': 'PARTNER:',
    },
    'pfsph1ub': {
      'en': 'ENVIRONMENTAL IMPACT IN DETAIL ',
      'it': 'IMPATTO AMBIENTALE IN DETTAGLIO',
    },
    '2jj24fro': {
      'en': 'SOCIAL RESPONSIBILITY',
      'it': 'RESPONSABILITÀ SOCIALE',
    },
    'jgu0fkcr': {
      'en': 'ETHICAL LABOUR PRACTICES',
      'it': 'PRATICHE DI LAVORO ETICHE',
    },
    'ft007jpg': {
      'en': 'PEOPLE POLICIES',
      'it': 'POLITICHE PER LE PERSONE',
    },
    'tdv1krqf': {
      'en': 'HEALTH SAFETY & WELLBEING',
      'it': 'SALUTE, SICUREZZA E BENESSERE',
    },
    'y9tp1yoy': {
      'en': 'DIVERSITY, EQUALITY, AND INCLUSION',
      'it': 'DIVERSITÀ, UGUAGLIANZA E INCLUSIONE',
    },
    'vpk8kj5w': {
      'en': 'COMMUNITY ENGAGEMENT',
      'it': 'COINVOLGIMENTO DELLA COMUNITÀ',
    },
    'wtyq0wrp': {
      'en': 'SOCIAL IMPACT IN DETAIL',
      'it': 'IMPATTO SOCIALE IN DETTAGLIO',
    },
    'n1gnnu2b': {
      'en': 'CERTIFICATIONS & AWARDS',
      'it': 'CERTIFICAZIONI E PREMI',
    },
    'vohl0bmk': {
      'en': 'WHAT\'S NEW',
      'it': 'COSA C\'È DI NUOVO',
    },
    'e1d24ksr': {
      'en': 'VIEW MORE',
      'it': 'GUARDA DI PIÙ',
    },
    't2i2n9u4': {
      'en': 'A.L.C.',
      'it': 'A.L.C.',
    },
    '7p27puf9': {
      'en': 'BEST SELLERS',
      'it': 'I PIÙ VENDUTI',
    },
    '7r4zznat': {
      'en': 'VIEW MORE',
      'it': 'GUARDA DI PIÙ',
    },
    'muxeno9y': {
      'en': 'A.L.C.',
      'it': 'A.L.C.',
    },
    'v6ubjnis': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // AddAdressEdit
  {
    'zgqgm72p': {
      'en': 'ADD NEW ADDRESS',
      'it': 'AGGIUNGI NUOVO INDIRIZZO',
    },
    'tz8kt9my': {
      'en': 'First Name',
      'it': '',
    },
    'yiwtzqsn': {
      'en': 'Field is required',
      'it': 'Credenziali non valide',
    },
    'dx6m084g': {
      'en': 'Surname',
      'it': '',
    },
    'x7ilhjuf': {
      'en': 'Field is required',
      'it': 'Credenziali non valide',
    },
    'zdgo4s5u': {
      'en': 'Dialing Code',
      'it': '',
    },
    '5ehdl2pm': {
      'en': 'Field is required',
      'it': 'Credenziali non valide',
    },
    'unt6sqf4': {
      'en': 'Phone',
      'it': '',
    },
    'pc8gknjo': {
      'en': 'Field is required',
      'it': 'Credenziali non valide',
    },
    '868rtk7t': {
      'en': 'USE MY CURRENT LOCATION',
      'it': 'USA LA MIA POSIZIONE ATTUALE',
    },
    'cchyjox3': {
      'en': 'Address Line 1',
      'it': 'E-mail',
    },
    'qpzkkzh8': {
      'en': 'Field is required',
      'it': 'Credenziali non valide',
    },
    'v3rwagp8': {
      'en': 'Address Line 2 (Optional)',
      'it': '',
    },
    '6w6is7hm': {
      'en': 'City / Town',
      'it': '',
    },
    'afmznfxr': {
      'en': 'Field is required',
      'it': 'Credenziali non valide',
    },
    'i72ehrod': {
      'en': 'Postcode',
      'it': '',
    },
    '5adsa9aa': {
      'en': 'Field is required',
      'it': 'Credenziali non valide',
    },
    'rxazdt3m': {
      'en': 'Country',
      'it': '',
    },
    'ous4dogk': {
      'en': 'Field is required',
      'it': 'Credenziali non valide',
    },
    'curfpb3s': {
      'en': 'SAVE ADDRESS',
      'it': 'SALVA INDIRIZZO',
    },
    'h2670m0u': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // ShopScreen
  {
    'p2d7re4p': {
      'en': '',
      'it': '',
    },
    '021pmo7r': {
      'en': '01',
      'it': '01',
    },
    'oagcw7br': {
      'en': 'NEW ARRIVALS',
      'it': 'NUOVI ARRIVI',
    },
    'lg6m3b31': {
      'en': '02',
      'it': '02',
    },
    'z35r726k': {
      'en': 'FASHION',
      'it': 'MODA',
    },
    'isjwbl2g': {
      'en': '03',
      'it': '03',
    },
    'cbsowt19': {
      'en': 'JEWELLERY',
      'it': 'GIOIELLERIA',
    },
    'mp6sexqm': {
      'en': 'OVERALL',
      'it': 'COMPLESSIVAMENTE',
    },
    'l8v450kx': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // ShopScreenProducts
  {
    'et6fg9nj': {
      'en': 'All',
      'it': '',
    },
    'xmbnn9ka': {
      'en': 'Tops',
      'it': '',
    },
    'szmfzlyz': {
      'en': 'Wellness',
      'it': '',
    },
    'lqim06vu': {
      'en': 'Bohemian',
      'it': '',
    },
    '8lfkjz2t': {
      'en': 'Outdoorsy',
      'it': '',
    },
    'yphj06mj': {
      'en': 'All',
      'it': '',
    },
    'saj76o7z': {
      'en': 'Filter by',
      'it': '',
    },
    '82ht9g5i': {
      'en': 'Sort by',
      'it': '',
    },
    '9syuszma': {
      'en': 'OVERALL',
      'it': '',
    },
    'e814b6no': {
      'en': 'SCORE',
      'it': '',
    },
    'lxcdiea2': {
      'en': 'Home',
      'it': '',
    },
  },
  // QuizPageCopy
  {
    'qmx2jtz8': {
      'en': ' — ',
      'it': '—',
    },
    'e6zb6uz8': {
      'en': 'Hello World',
      'it': 'Ciao mondo',
    },
    '3pgu17ll': {
      'en': ' — ',
      'it': '—',
    },
    'bvw3lse7': {
      'en': 'Hello World',
      'it': 'Ciao mondo',
    },
    'bii1wl3g': {
      'en': '',
      'it': '',
    },
    'p7fxf56w': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // QuizShop
  {
    'wgcxlljq': {
      'en': ' — ',
      'it': '—',
    },
    '61dzb6zr': {
      'en': 'Hello World',
      'it': 'Ciao mondo',
    },
    '5uj0ob2x': {
      'en': 'Price from',
      'it': '',
    },
    '4fvh449t': {
      'en': 'Price from',
      'it': '',
    },
    'nrigrg5t': {
      'en': '',
      'it': '',
    },
    'mnz1gl2j': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // ShoppingCart
  {
    '196rdxmx': {
      'en': 'MY SHOPPING CART',
      'it': 'IL MIO INDIRIZZO DI SPEDIZIONE',
    },
    '2uhofsc5': {
      'en': 'Items (3)',
      'it': '',
    },
    'rjcqrzj1': {
      'en': 'Saved for Later (3)',
      'it': '',
    },
    'zk3uez5v': {
      'en': 'What points and how many would you like to redeem?',
      'it': '',
    },
    '4av3qaah': {
      'en': '(i)',
      'it': '',
    },
    'eher2rkc': {
      'en': 'What points and how many would you like to redeem? (i)',
      'it': '',
    },
    'ba1l8wf9': {
      'en': 'Generic Points',
      'it': '',
    },
    '34uk80un': {
      'en': 'Generic Points',
      'it': '',
    },
    'zvpr0rw2': {
      'en': 'Search...',
      'it': '',
    },
    'b8jm4v1z': {
      'en': 'Generic Points',
      'it': '',
    },
    'l5lxtaa1': {
      'en': 'Option 2',
      'it': '',
    },
    '9lblhf6f': {
      'en': 'Option 3',
      'it': '',
    },
    'qrmhklgl': {
      'en': 'REDEEMABLE   ',
      'it': '',
    },
    'jh499hzc': {
      'en': '80',
      'it': '',
    },
    '00m3ssbm': {
      'en': 'USE',
      'it': '',
    },
    'qc8tz88u': {
      'en': '80',
      'it': '',
    },
    'xrno36dw': {
      'en': '= ',
      'it': '',
    },
    'u8gyxzi5': {
      'en': '£ 160',
      'it': '',
    },
    'edp4do44': {
      'en': 'REDEEM',
      'it': '',
    },
    'mbs6ab9b': {
      'en': 'TOTAL VALUE',
      'it': '',
    },
    'z2sxytb1': {
      'en': '£339,90',
      'it': '',
    },
    'blnp66an': {
      'en': 'DEDUCTION',
      'it': '',
    },
    'hzkddkg0': {
      'en': '-£19,00',
      'it': '',
    },
    'gt8txxjz': {
      'en': 'REWARDS REDEMPTION',
      'it': '',
    },
    'tuz373rq': {
      'en': '-£160,00',
      'it': '',
    },
    'e9mjir8h': {
      'en': 'SHIPPING',
      'it': '',
    },
    'kc5ejxt7': {
      'en': 'It will be calculated in the Checkout',
      'it': '',
    },
    'gaiw5cu3': {
      'en': 'TOTAL',
      'it': '',
    },
    'j6qzbkxx': {
      'en': '£160,90',
      'it': '',
    },
    'qi2lp9du': {
      'en': 'CHECKOUT',
      'it': '',
    },
    'l2w1iek4': {
      'en': 'LOOKS LIKE YOUR CART IS EMPTY!',
      'it': '',
    },
    'p9xr1se4': {
      'en': 'ADD SOME ITEMS AND YOU\'LL SEE THEM HERE.',
      'it': '',
    },
    'ofzupecp': {
      'en': 'YOU\'RE JUST ONE STEP AWAY FROM UNLOCKING',
      'it': '',
    },
    '4o11mt6n': {
      'en': 'AWESOME REWARDS WITH YOU PURCHASE',
      'it': '',
    },
    'v0jj2rfe': {
      'en': 'NO ITEMS SAVED YET!',
      'it': '',
    },
    '6hsldz8p': {
      'en': 'START SAVING YOUR FAVOURITE PIECES.',
      'it': '',
    },
    'fssgk4ot': {
      'en': 'THEY\'LL BE HERE WHENEVER YOU\'RE READY TO',
      'it': '',
    },
    'n7lbeqqa': {
      'en': 'BUY AND UNLOCK SOME COOL REWARDS!',
      'it': '',
    },
    'figedqmn': {
      'en': 'Home',
      'it': '',
    },
  },
  // navbar
  {
    '7hz0qz4g': {
      'en': 'HOME',
      'it': 'CASA',
    },
    'r00b3ssc': {
      'en': 'EXPLORE',
      'it': 'ESPLORARE',
    },
    'b2mg8b19': {
      'en': 'SHOP',
      'it': 'NEGOZIO',
    },
    'qiu5d9mu': {
      'en': 'CREATE',
      'it': 'CREARE',
    },
    '4i6btok4': {
      'en': 'REWARDS',
      'it': 'RICOMPENSE',
    },
  },
  // Options
  {
    '127x5b00': {
      'en': 'MY MODIE',
      'it': 'LA MIA MODALITÀ',
    },
    'qqqjiz4g': {
      'en': 'FAVOURITES',
      'it': 'PREFERITI',
    },
    'rhuxg41h': {
      'en': 'ABOUT MODIE',
      'it': 'INFORMAZIONI SU MODIE',
    },
    'xlrwmtqj': {
      'en': 'LOG OUT',
      'it': 'ESCI',
    },
  },
  // HowToGuide
  {
    'nii6o3ow': {
      'en': 'SKIP ALL',
      'it': 'SALTA TUTTO',
    },
    'opx2bruq': {
      'en':
          'By clicking here you\'ll have access to your profile, your favorites and you\'ll be able to find out more about Modie.',
      'it':
          'Cliccando qui avrai accesso al tuo profilo, ai tuoi preferiti e potrai scoprire di più su Modie.',
    },
    'oiyke1kl': {
      'en': 'SKIP ALL',
      'it': 'SALTA TUTTO',
    },
    'guyuq145': {
      'en':
          'Here at Home you can access the product guides, see the Modiers\' reviews, the hottest products of the moment and our partner brands.',
      'it':
          'Qui su Home puoi accedere alle guide dei prodotti, leggere le recensioni dei Modiers, i prodotti più in voga del momento e i nostri marchi partner.',
    },
    '5dp5krlx': {
      'en': 'HOME',
      'it': 'CASA',
    },
    '8red3mjm': {
      'en': '',
      'it': '',
    },
    'u178yu4g': {
      'en': 'SHOP',
      'it': 'NEGOZIO',
    },
    '9d85km0r': {
      'en': 'CREATE',
      'it': 'CREARE',
    },
    '5r4f42og': {
      'en': 'REWARDS',
      'it': 'RICOMPENSE',
    },
    'hgvjwxfa': {
      'en': 'SKIP ALL',
      'it': 'SALTA TUTTO',
    },
    'c0rl2skk': {
      'en':
          'At Explore section you will have access to the explore menu where you will have detailed access to the product guides, our brands and your favorite products.',
      'it':
          'Nella sezione Esplora avrai accesso al menu Esplora, dove potrai trovare informazioni dettagliate sulle guide ai prodotti, sui nostri marchi e sui tuoi prodotti preferiti.',
    },
    '7omg257p': {
      'en': 'HOME',
      'it': 'CASA',
    },
    '7yul5chy': {
      'en': 'EXPLORE',
      'it': 'ESPLORARE',
    },
    'b4iyu3tu': {
      'en': 'SHOP',
      'it': 'NEGOZIO',
    },
    '6fum1x44': {
      'en': 'CREATE',
      'it': 'CREARE',
    },
    'tpkcasr4': {
      'en': 'REWARDS',
      'it': 'RICOMPENSE',
    },
    'ucvnsnn2': {
      'en': 'SKIP ALL',
      'it': 'SALTA TUTTO',
    },
    '1kw2y1ep': {
      'en':
          'At Shop section you  can explore all our products in different categories, styles, materials and much more.',
      'it':
          'Nella sezione Shop puoi esplorare tutti i nostri prodotti in diverse categorie, stili, materiali e molto altro ancora.',
    },
    '1owkf44z': {
      'en': 'HOME',
      'it': 'CASA',
    },
    'iqzwqcdu': {
      'en': '',
      'it': '',
    },
    '5no5z7e1': {
      'en': 'SHOP',
      'it': 'NEGOZIO',
    },
    '0m8r6axf': {
      'en': 'CREATE',
      'it': 'CREARE',
    },
    'y6zclf93': {
      'en': 'REWARDS',
      'it': 'RICOMPENSE',
    },
    'ijgxlw94': {
      'en': 'SKIP ALL',
      'it': 'SALTA TUTTO',
    },
    'rl4bxgpk': {
      'en':
          'In the Create menu you can create and view your own reviews of the products you buy and earn points.',
      'it':
          'Nel menu Crea puoi creare e visualizzare le tue recensioni dei prodotti che acquisti e guadagnare punti.',
    },
    'dh6zvlto': {
      'en': 'HOME',
      'it': 'CASA',
    },
    '1fquvt2c': {
      'en': '',
      'it': '',
    },
    'iy6p7igo': {
      'en': 'SHOP',
      'it': 'NEGOZIO',
    },
    'n6wqvt3m': {
      'en': 'CREATE',
      'it': 'CREARE',
    },
    'm2nl2bei': {
      'en': 'REWARDS',
      'it': 'RICOMPENSE',
    },
    'hqoksouh': {
      'en': 'SKIP ALL',
      'it': 'SALTA TUTTO',
    },
    '3ggqmg2j': {
      'en':
          'In Rewards menu, you\'ll be able to see your points and track where you\'ve earned them, so you can then convert them into purchases.',
      'it':
          'Nel menu Premi potrai vedere i tuoi punti e tenere traccia di dove li hai guadagnati, così da poterli convertire in acquisti.',
    },
    'ttf881n2': {
      'en': 'HOME',
      'it': 'CASA',
    },
    'f936muz2': {
      'en': '',
      'it': '',
    },
    'cvuh2622': {
      'en': 'SHOP',
      'it': 'NEGOZIO',
    },
    '09xyw6zc': {
      'en': 'CREATE',
      'it': 'CREARE',
    },
    'nz6d61l5': {
      'en': 'REWARDS',
      'it': 'RICOMPENSE',
    },
  },
  // SaveQuiz
  {
    'bz9pkvd5': {
      'en': 'SAVE CHANGES',
      'it': 'SALVA LE MODIFICHE',
    },
    'nkn3ma3n': {
      'en':
          'You\'ve made some changes to your preferences. Do you want to save them?',
      'it':
          'Hai apportato alcune modifiche alle tue preferenze. Vuoi salvarle?',
    },
    'n070pq1o': {
      'en': 'SAVE',
      'it': 'SALVA',
    },
    'qkqz53f8': {
      'en': 'Continue without saving',
      'it': 'Continua senza salvare',
    },
  },
  // EmptyAdress
  {
    '8bi7w1oj': {
      'en': 'NO ADDRESS',
      'it': 'NESSUN INDIRIZZO',
    },
    'httfox4a': {
      'en': 'You can view and manage the address you use for your orders here',
      'it':
          'Qui puoi visualizzare e gestire l\'indirizzo che utilizzi per i tuoi ordini',
    },
  },
  // Address
  {
    'klscklox': {
      'en': 'FIRST NAME',
      'it': 'NOME DI BATTESIMO',
    },
    'v0nu8yyt': {
      'en': 'SURNAME',
      'it': 'COGNOME',
    },
    '0br0o9db': {
      'en': 'DIALLING CODE',
      'it': 'CODICE DI NUMERO',
    },
    'yoiharwp': {
      'en': 'PHONE',
      'it': 'TELEFONO',
    },
    'z5u1qiyb': {
      'en': 'ADDRESS LINE 1',
      'it': 'INDIRIZZO LINEA 1',
    },
    'yqanlme7': {
      'en': 'ADDRESS LINE 2',
      'it': 'LINEA INDIRIZZO 2',
    },
    'i9iucoa7': {
      'en': 'LOCATION',
      'it': 'POSIZIONE',
    },
    'yg79b9fv': {
      'en': 'POST CODE',
      'it': 'CODICE POSTALE',
    },
    'pzixjxud': {
      'en': 'COUNTRY',
      'it': 'PAESE',
    },
    'lp8ayw00': {
      'en': 'Billing Address',
      'it': 'Indirizzo di fatturazione',
    },
  },
  // ReviewComp
  {
    'mipko0gk': {
      'en': 'REVIEW TITLE',
      'it': 'TITOLO DELLA RECENSIONE',
    },
    'fe67986n': {
      'en': '@idasaporito',
      'it': '@idasaporito',
    },
    'qk78wp79': {
      'en': '',
      'it': '',
    },
    'nrmc1wxr': {
      'en': 'OVERALL SCORE',
      'it': 'PUNTEGGIO TOTALE',
    },
    'jtsl3650': {
      'en': 'A.L.C.',
      'it': 'A.L.C.',
    },
    'xlxvvg35': {
      'en': 'Axel Satin-Crepe Blazer',
      'it': 'Blazer in raso e crepe Axel',
    },
    'sud9ojx5': {
      'en': '£120',
      'it': '120 \$',
    },
    'e9jnprp4': {
      'en': 'SHOP NOW ',
      'it': 'ACQUISTA ORA',
    },
    'ujn7q0o6': {
      'en': 'SEE FULL REVIEW',
      'it': 'GUARDA LA RECENSIONE COMPLETA',
    },
  },
  // FAQsComp
  {
    'r509y5u1': {
      'en':
          'How can I purchase  a product that is made to order /made to measure? ',
      'it':
          'Come posso acquistare un prodotto realizzato su ordinazione/su misura?',
    },
    'i1j4ogbk': {
      'en':
          'How can I purchase  a product that is made to order /made to measure? ',
      'it':
          'Come posso acquistare un prodotto realizzato su ordinazione/su misura?',
    },
    'zuqtota1': {
      'en':
          'Lorem ipsum dolor sit amet consectetur. Blandit sed amet id aliquam porta nisl pellentesque. Et vulputate facilisi vel cursus porttitor pretium. Non tortor nunc eget molestie gravida ipsum consectetur consectetur.',
      'it':
          'Lorem ipsum dolor sit amet consectetur. Blandit sed amet id aliquam porta nisl pellentesque. Et vulputate facilisi vel cursus porttitor pretium. Non tortor nunc eget molestie gravida ipsum consectetur consectetur.',
    },
  },
  // EmptyCard
  {
    '47b7lodo': {
      'en': 'NO CARDS',
      'it': 'NESSUN INDIRIZZO',
    },
    'zf9qsroe': {
      'en': 'You can view and manage the cards you use for your orders here',
      'it':
          'Qui puoi visualizzare e gestire l\'indirizzo che utilizzi per i tuoi ordini',
    },
  },
  // AddToCart
  {
    '7xyn04rj': {
      'en': 'ADDED TO YOUR CART',
      'it': '',
    },
    'vv34ozm3': {
      'en': 'COLOUR: ',
      'it': '',
    },
    'bhbxovc0': {
      'en': 'SIZE: ',
      'it': '',
    },
    'y3y6brec': {
      'en': 'QUANTITY: ',
      'it': '',
    },
    '1mqzlezj': {
      'en': 'Delete',
      'it': '',
    },
    'pp5fovmt': {
      'en': 'NEW CART',
      'it': '',
    },
    'llb8h635': {
      'en': 'Continue Shopping',
      'it': '',
    },
  },
  // EmptyFav
  {
    '26j29mkx': {
      'en': 'HEY THERE! YOUR FAVOURITES LIST IS',
      'it': '',
    },
    'fi4w04g4': {
      'en': 'CURRENTLY EMPTY. READY TO GET INSPIRED?',
      'it': '',
    },
    's6m88us1': {
      'en': 'START BY CLICKING THE ',
      'it': '',
    },
    'bm63rydi': {
      'en': ' BUTTON',
      'it': '',
    },
    'jtb8ec8k': {
      'en': 'IN OUR PRODUCT GUIDES AND SHOP SECTION.',
      'it': '',
    },
    'cptmf7ih': {
      'en': 'IT\'S THE PERFECT WAY TO COLLECT ALL THE',
      'it': '',
    },
    'outpt9q5': {
      'en': 'THINGS THAT CATCH YOUR EYE.',
      'it': '',
    },
    'smztth41': {
      'en': 'HAPPY BROWSING AND SHOPPING!',
      'it': '',
    },
  },
  // Review
  {
    '5g3ew2vx': {
      'en': 'SEE REVIEW ',
      'it': '',
    },
    't65noyq1': {
      'en': 'Durability:  ',
      'it': '',
    },
    'y6zjcpw7': {
      'en':
          'Lorem ipsum dolor sit amet consectetur. Eros nec ut libero felis. Tellus viverra at in donec at. Turpis imperdie...',
      'it': '',
    },
    '1yd2raw0': {
      'en': 'Size & Fit: ',
      'it': '',
    },
    'so0yk67o': {
      'en':
          'Lorem ipsum dolor sit amet consectetur. Eros nec ut libero felis. Tellus viverra at in donec at. Turpis imperdie...',
      'it': '',
    },
    'mstbp22c': {
      'en': 'Versatility: ',
      'it': '',
    },
    'zfis9w5x': {
      'en':
          'Lorem ipsum dolor sit amet consectetur. Eros nec ut libero felis. Tellus viverra at in donec at. Turpis imperdie...',
      'it': '',
    },
    'qvjt6j71': {
      'en': 'Functionality: ',
      'it': '',
    },
    'v7b0oud9': {
      'en':
          'Lorem ipsum dolor sit amet consectetur. Eros nec ut libero felis. Tellus viverra at in donec at. ',
      'it': '',
    },
    'we35mhsi': {
      'en': 'Value for Money: ',
      'it': '',
    },
    'e92aum2h': {
      'en': 'Lorem ipsum dolor sit amet consectetur. ',
      'it': '',
    },
  },
  // EmptyReviews
  {
    'cqg8y1ys': {
      'en': 'NO REVIEWS YET. DISCOVER IT,  WEAR IT, AND TELL',
      'it': '',
    },
    'acx8czjj': {
      'en': 'OTHERS WHAT YOU THINK!',
      'it': '',
    },
  },
  // ConfirmationReturn
  {
    '75ec5r9n': {
      'en': 'YOUR RETURN HAS BEEN REGISTERED',
      'it': '',
    },
    '3pnmi3b3': {
      'en':
          'Please check your email for detailed instructions for returning your item. A refund will be issued when the brand receives the item.',
      'it': '',
    },
    '25gckpqg': {
      'en': 'CONTINUE',
      'it': '',
    },
  },
  // ConfirmationExchange
  {
    'iz9qkfvb': {
      'en': 'YOUR EXCHANGE HAS BEEN REGISTERED',
      'it': '',
    },
    'k1d1ssln': {
      'en':
          'Please check your email for detailed instructions to proceed with the exchange.',
      'it': '',
    },
    'rm7vpcc8': {
      'en': 'CONTINUE',
      'it': '',
    },
  },
  // copycode
  {
    'o4mhuwta': {
      'en': 'Code copied!',
      'it': '',
    },
  },
  // SortBy
  {
    'pmh8x06f': {
      'en': 'SORT BY',
      'it': '',
    },
    '066wlgms': {
      'en': 'Relevance',
      'it': '',
    },
    '27obtrne': {
      'en': 'Newest Arrivals',
      'it': '',
    },
    'krqnuit6': {
      'en': 'Hottest Products',
      'it': '',
    },
    'nxcrl9ly': {
      'en': 'Overall Review Score ',
      'it': '',
    },
    'k2t0c6f9': {
      'en': '(High to Low)',
      'it': '',
    },
    'p5r5mvzc': {
      'en': 'Reviews ',
      'it': '',
    },
    '4jhfnbhe': {
      'en': '(Most to Least)',
      'it': '',
    },
    'v6zykz9o': {
      'en': 'Price ',
      'it': '',
    },
    '55slt8zn': {
      'en': '(High to Low)',
      'it': '',
    },
    'e2hr5e71': {
      'en': 'Price ',
      'it': '',
    },
    '8zizg2lh': {
      'en': '(Low to High)',
      'it': '',
    },
    'v1siciz1': {
      'en': 'SUBMIT',
      'it': '',
    },
    '2kdtcpj3': {
      'en': 'Redefine',
      'it': '',
    },
  },
  // RequestQuiz
  {
    'bvgdpb9e': {
      'en': 'WOULD YOU LIKE A CUSTOM QUIZ TO ASSIST WITH YOUR RESEARCH?',
      'it': '',
    },
    'dzqw4kb1': {
      'en': 'We\'ve got you covered! Just answer ',
      'it': '',
    },
    '5jha74x6': {
      'en': '4',
      'it': '',
    },
    '8dp7u6xe': {
      'en':
          ' quick questions and we\'ll help you find what you are looking for.',
      'it': '',
    },
    't98kicir': {
      'en': 'TAKE THE QUIZ',
      'it': '',
    },
    '63vkqf4m': {
      'en': 'Go on without',
      'it': '',
    },
  },
  // EmptySearch
  {
    '15u94v52': {
      'en': 'NO PRODUCT WAS FOUND.',
      'it': '',
    },
    'e63ji2u5': {
      'en': 'PLEASE TRY SEARCHING WITH A DIFFERENT WORD TO',
      'it': '',
    },
    'bi8z5gw1': {
      'en': 'DESCRIBE WHAT YOU\'RE LOOKING FOR',
      'it': '',
    },
  },
  // DelteAccount
  {
    'yd8hedec': {
      'en': 'DELETE ACCOUNT',
      'it': '',
    },
    'ycm8yytg': {
      'en': 'Are you sure you want to delete your account?',
      'it': '',
    },
    'vesiw6em': {
      'en':
          'This action is irreversible. You will lose access to all your points, history, and any associated rewards.',
      'it': '',
    },
    'aq330kfn': {
      'en': 'CANCEL',
      'it': '',
    },
    'ad5l8rwa': {
      'en': 'Delete account',
      'it': '',
    },
  },
  // Filter
  {
    'z14g3knd': {
      'en': 'FILTER BY',
      'it': '',
    },
    'xr0bmbe4': {
      'en': 'COLOUR:',
      'it': '',
    },
    'l173d23l': {
      'en': 'SIZE & FIT:',
      'it': '',
    },
    '0c4pk84y': {
      'en': 'XXS',
      'it': '',
    },
    '80e2yqyq': {
      'en': 'XS',
      'it': '',
    },
    'twavvc5v': {
      'en': 'S',
      'it': '',
    },
    'glto7uf2': {
      'en': 'M',
      'it': '',
    },
    '5e26jkcu': {
      'en': 'L',
      'it': '',
    },
    'x92tfgcm': {
      'en': 'XL',
      'it': '',
    },
    'tyitdlqf': {
      'en': 'XXL',
      'it': '',
    },
    '907kxi21': {
      'en': 'XXXL',
      'it': '',
    },
    'n2squfc2': {
      'en': 'c',
      'it': '',
    },
    'q29nkahm': {
      'en': 'XXS',
      'it': '',
    },
    'ro9xq5gb': {
      'en': 'XS',
      'it': '',
    },
    'yzovocul': {
      'en': 'S',
      'it': '',
    },
    'dcalz9cz': {
      'en': 'M',
      'it': '',
    },
    'pqszw0pe': {
      'en': 'L',
      'it': '',
    },
    'v14zxf21': {
      'en': 'XL',
      'it': '',
    },
    'h61n19go': {
      'en': 'XXL',
      'it': '',
    },
    'po0xtyqi': {
      'en': 'XXXL',
      'it': '',
    },
    'vdl0ozgv': {
      'en': 'c',
      'it': '',
    },
    'i1f42hl6': {
      'en': 'MATERIALS:',
      'it': '',
    },
    'amzxnklt': {
      'en': 'XXS',
      'it': '',
    },
    'ifwic418': {
      'en': 'XS',
      'it': '',
    },
    'rdiozoh4': {
      'en': 'S',
      'it': '',
    },
    '72zdv49b': {
      'en': 'M',
      'it': '',
    },
    '1h0qg3lw': {
      'en': 'L',
      'it': '',
    },
    'ljdprl0q': {
      'en': 'XL',
      'it': '',
    },
    'q740amny': {
      'en': 'XXL',
      'it': '',
    },
    'j8deeh84': {
      'en': 'XXXL',
      'it': '',
    },
    '2iz7m73d': {
      'en': 'c',
      'it': '',
    },
    '7yau6ixa': {
      'en': 'XXS',
      'it': '',
    },
    'u52asyki': {
      'en': 'XS',
      'it': '',
    },
    'pno9m6h5': {
      'en': 'S',
      'it': '',
    },
    'y5xgj2e8': {
      'en': 'M',
      'it': '',
    },
    'm4tkkzxm': {
      'en': 'L',
      'it': '',
    },
    'wlxc7yvq': {
      'en': 'XL',
      'it': '',
    },
    '20y4ysa8': {
      'en': 'XXL',
      'it': '',
    },
    'vz5i2aw7': {
      'en': 'XXXL',
      'it': '',
    },
    'kufz8kn6': {
      'en': 'c',
      'it': '',
    },
    'vp265hra': {
      'en': 'BRAND:',
      'it': '',
    },
    '1u1gryoa': {
      'en': 'XXS',
      'it': '',
    },
    'dm8sp9u1': {
      'en': 'XS',
      'it': '',
    },
    'nog1toja': {
      'en': 'S',
      'it': '',
    },
    'j9evsnai': {
      'en': 'M',
      'it': '',
    },
    'qy1llwgr': {
      'en': 'L',
      'it': '',
    },
    'yl4iplwa': {
      'en': 'XL',
      'it': '',
    },
    'bi132gzh': {
      'en': 'XXL',
      'it': '',
    },
    'c7zw07h9': {
      'en': 'XXXL',
      'it': '',
    },
    'xryfmq6e': {
      'en': 'c',
      'it': '',
    },
    'i5r7jw1s': {
      'en': 'XXS',
      'it': '',
    },
    'zuqifud2': {
      'en': 'XS',
      'it': '',
    },
    'zphw455h': {
      'en': 'S',
      'it': '',
    },
    'hjhn4xxu': {
      'en': 'M',
      'it': '',
    },
    'dxnlqvcu': {
      'en': 'L',
      'it': '',
    },
    'f62iefth': {
      'en': 'XL',
      'it': '',
    },
    'ljt8q685': {
      'en': 'XXL',
      'it': '',
    },
    'ggnbwom6': {
      'en': 'XXXL',
      'it': '',
    },
    'x54ylz85': {
      'en': 'c',
      'it': '',
    },
    'aajivwmv': {
      'en': 'PRICE',
      'it': '',
    },
    'ckb18l6q': {
      'en': 'From',
      'it': '',
    },
    'e1pq2ct2': {
      'en': 'To',
      'it': '',
    },
    'm1nzb96d': {
      'en': 'SHOW RESULTS',
      'it': '',
    },
    'y1h5iuc6': {
      'en': 'Clear All',
      'it': '',
    },
  },
  // ProdReviewsComp
  {
    'vyawvw0b': {
      'en': 'OVERALL SCORE',
      'it': '',
    },
    'cpm7k09s': {
      'en': '  (i)',
      'it': '',
    },
    'fbbid3ig': {
      'en': 'DURABILITY',
      'it': '',
    },
    '5amfndwo': {
      'en': 'SIZE & FIT',
      'it': '',
    },
    '2pym7317': {
      'en': 'VERSATILITY',
      'it': '',
    },
    'jxz3604j': {
      'en': 'FUNCTIONALITY',
      'it': '',
    },
    'v2vum5uk': {
      'en': 'VALUE FOR MONEY',
      'it': '',
    },
  },
  // EmptyProdGuides
  {
    'hs0kh4dl': {
      'en': 'WE\'RE WORKING ON MORE AWESOME CONTENT',
      'it': '',
    },
    'h4hwai3j': {
      'en': 'TO INSPIRE YOU WITH OUR PRODUCT GUIDES.',
      'it': '',
    },
    'rgk6rlcj': {
      'en': 'CHECK BACK LATER TO SEE WHAT\'S NEW!',
      'it': '',
    },
  },
  // Productshop
  {
    'qnlb07uk': {
      'en': 'SCORE',
      'it': '',
    },
  },
  // RedemptionGuidelines
  {
    'rv6ctcpn': {
      'en': 'REDEMPTION GUIDELINES',
      'it': '',
    },
    'a6vnduq3': {
      'en': '1.',
      'it': '',
    },
    'rfoxjk6o': {
      'en': ' Points Availability: ',
      'it': '',
    },
    '7kntqdbh': {
      'en':
          ' Redeem only the points in your account; you can\'t exceed your balance.',
      'it': '',
    },
    'z4ow0osw': {
      'en': '2.',
      'it': '',
    },
    'rtr4y3se': {
      'en': ' Reward Application Limiti:',
      'it': '',
    },
    'mxjev1xd': {
      'en':
          ' Rewards cover up to 50% of your basket\'s total within 12 months.',
      'it': '',
    },
    'ysgzii2u': {
      'en': '3.',
      'it': '',
    },
    'p8tc7z0h': {
      'en': ' Whole Number Redemptions:',
      'it': '',
    },
    '1b9gd5kz': {
      'en':
          ' Redeem points in whole numbers (e.g. 20 or 21). No partial amounts allowed.',
      'it': '',
    },
    'gw8edabw': {
      'en': '4.',
      'it': '',
    },
    'l4gwesv2': {
      'en': ' Reward Type:',
      'it': '',
    },
    '4bd3ep8g': {
      'en':
          ' Redeem either generic rewards (for product reviews) or brand-specific rewards (if the brand buys your visual content).',
      'it': '',
    },
    'iyolhlke': {
      'en': 'CONTINUE',
      'it': '',
    },
  },
  // ProductsCart
  {
    'lm5zwu2s': {
      'en': 'OTHER BRAND',
      'it': '',
    },
    '00afhiei': {
      'en': 'AXEL SATIN-CREPE BLAZER',
      'it': '',
    },
    'ls393b9g': {
      'en': 'COLOUR: ',
      'it': '',
    },
    'r1gt7wgr': {
      'en': 'Beige',
      'it': '',
    },
    '9gb13vo7': {
      'en': 'AXEL SATIN-CREPE BLAZER',
      'it': '',
    },
    'z6iovqw1': {
      'en': 'Size: ',
      'it': '',
    },
    '3sg5jm68': {
      'en': 'S',
      'it': '',
    },
    'md7p6089': {
      'en': 'AXEL SATIN-CREPE BLAZER',
      'it': '',
    },
    '65hcjefo': {
      'en': 'QUANTITY: ',
      'it': '',
    },
    'ujb28x1o': {
      'en': '2',
      'it': '',
    },
    'qbic4dt7': {
      'en': 'AXEL SATIN-CREPE BLAZER',
      'it': '',
    },
    'v0q08xdm': {
      'en': 'Delete',
      'it': '',
    },
    'pttdqe5b': {
      'en': 'Save for Later',
      'it': '',
    },
    'yx5ensm5': {
      'en': '£120',
      'it': '',
    },
    '4mjot89a': {
      'en': 'each £60',
      'it': '',
    },
  },
  // CheckoutCart
  {
    'jt5jkpyo': {
      'en': 'TOTAL VALUE',
      'it': '',
    },
    'xoyttvud': {
      'en': '£339,90',
      'it': '',
    },
    'bbrusmce': {
      'en': 'DEDUCTION',
      'it': '',
    },
    '0evmowt8': {
      'en': '-£19,00',
      'it': '',
    },
    'tg0o0oh1': {
      'en': 'REWARDS REDEMPTION',
      'it': '',
    },
    'q6zypq64': {
      'en': '-£160,00',
      'it': '',
    },
    '8wjj7nep': {
      'en': 'SHIPPING',
      'it': '',
    },
    'bsd4ca3p': {
      'en': 'It will be calculated in the Checkout',
      'it': '',
    },
    'ferbef96': {
      'en': 'TOTAL',
      'it': '',
    },
    '7xoqv6ai': {
      'en': '£160,90',
      'it': '',
    },
    '6p19sqpu': {
      'en': 'CHECKOUT',
      'it': '',
    },
  },
  // CartPoints
  {
    '7gsxevnp': {
      'en': 'What points and how many would you like to redeem?',
      'it': '',
    },
    'ryenqjrt': {
      'en': '(i)',
      'it': '',
    },
    'tn752an6': {
      'en': 'What points and how many would you like to redeem? (i)',
      'it': '',
    },
    'z44yphdz': {
      'en': 'Generic Points',
      'it': '',
    },
    'gserupa8': {
      'en': 'Generic Points',
      'it': '',
    },
    'wzpjevlz': {
      'en': 'Search...',
      'it': '',
    },
    'fcwlgnz3': {
      'en': 'Generic Points',
      'it': '',
    },
    'vfgcqoe9': {
      'en': 'Option 2',
      'it': '',
    },
    'ypfz6pl8': {
      'en': 'Option 3',
      'it': '',
    },
    '3lu94w4l': {
      'en': 'REDEEMABLE   ',
      'it': '',
    },
    'fw796j13': {
      'en': '80',
      'it': '',
    },
    'gg1vib05': {
      'en': 'USE',
      'it': '',
    },
    'ddlwfr1e': {
      'en': '80',
      'it': '',
    },
    'sfvr1v8e': {
      'en': '= ',
      'it': '',
    },
    'b5vzhxxr': {
      'en': '£ 160',
      'it': '',
    },
    '5g890or7': {
      'en': 'REDEEM',
      'it': '',
    },
  },
  // Miscellaneous
  {
    'uz38x5yt': {
      'en':
          'Enabling location services lets us autofill your shipping address for faster checkout',
      'it': '',
    },
    '3cp75ohg': {
      'en':
          'This lets you select photos and videos from your library and attach to your entry.',
      'it': '',
    },
    'j7tk5e8f': {
      'en': '',
      'it': '',
    },
    'ma5ps1j2': {
      'en':
          'Turning on location services allows us to show you when pals are nearby.',
      'it': '',
    },
    '5whnbuq7': {
      'en':
          'Your data will be used to personalise and optimise your experience on Modie.',
      'it': '',
    },
    '7xcf9j22': {
      'en':
          'Notifications may include alerts, sounds, and icon badges. These can be configured in Settings.',
      'it': '',
    },
    'l3mzqz2t': {
      'en': '',
      'it': '',
    },
    'nhmfdbp4': {
      'en': '',
      'it': '',
    },
    'jygv4vi1': {
      'en': '',
      'it': '',
    },
    'lo15cxuq': {
      'en': '',
      'it': '',
    },
    'k56kmsdv': {
      'en': '',
      'it': '',
    },
    '0gpxhasg': {
      'en': '',
      'it': '',
    },
    '894ylv6h': {
      'en': '',
      'it': '',
    },
    'iez3hjq1': {
      'en': '',
      'it': '',
    },
    'kx6s57bx': {
      'en': '',
      'it': '',
    },
    '4n0kubdm': {
      'en': '',
      'it': '',
    },
    '1ap3nwg4': {
      'en': '',
      'it': '',
    },
    'fgdt9g6h': {
      'en': '',
      'it': '',
    },
    'tevlwcm7': {
      'en': '',
      'it': '',
    },
    'njr3ceyp': {
      'en': '',
      'it': '',
    },
    'vb884xn0': {
      'en': '',
      'it': '',
    },
    'jioajivd': {
      'en': '',
      'it': '',
    },
    'smo1ynpn': {
      'en': '',
      'it': '',
    },
    'eimkqmml': {
      'en': '',
      'it': '',
    },
    '4jm3kxak': {
      'en': '',
      'it': '',
    },
    '07tchzoo': {
      'en': '',
      'it': '',
    },
    'zl7zf0lo': {
      'en': '',
      'it': '',
    },
    'en72btnx': {
      'en': '',
      'it': '',
    },
    'o1vydplw': {
      'en': '',
      'it': '',
    },
    'v6gef5y8': {
      'en': '',
      'it': '',
    },
    'zibmqbsc': {
      'en': '',
      'it': '',
    },
  },
].reduce((a, b) => a..addAll(b));
