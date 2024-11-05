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
      'it': '',
    },
    'jcn97ic6': {
      'en': 'Please choose an option from the dropdown',
      'it': '',
    },
    'kd1iwao9': {
      'en': 'Field is required',
      'it': '',
    },
    '5tch86hh': {
      'en': 'Please choose an option from the dropdown',
      'it': '',
    },
    '638w6gzl': {
      'en': 'Field is required',
      'it': '',
    },
    'x0c2qng2': {
      'en': 'Please choose an option from the dropdown',
      'it': '',
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
      'it': 'Non corrisponde',
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
      'it': '',
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
      'it': '',
    },
    '9tyo3xzh': {
      'en': 'Please choose an option from the dropdown',
      'it': '',
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
          'Questi dati aiutano Modie a personalizzare i contenuti che vedi, garantendo al contempo la sicurezza della comunità Modie. I tuoi dati rimangono riservati e non saranno divulgati a terzi.',
    },
    'r4yhne1d': {
      'en': 'Birthday (dd/mm/yyyy)',
      'it': 'Compleanno (gg/mm/aaaa)',
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
    'g83z1ngm': {
      'en': '5  NEW-SEASON TRENDS WE LOVE',
      'it': '5 TENDENZE DELLA NUOVA STAGIONE CHE AMIAMO',
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
      'it': '',
    },
    'xskyhx39': {
      'en': 'Please choose an option from the dropdown',
      'it': '',
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
      'it': '',
    },
    'n0deucim': {
      'en': 'Please choose an option from the dropdown',
      'it': '',
    },
    'hq99wd28': {
      'en': 'Field is required',
      'it': '',
    },
    'am8f8p0b': {
      'en': 'Please choose an option from the dropdown',
      'it': '',
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
      'it': 'CHE STILE DI VITA VIVI?',
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
    'v1a22l0t': {
      'en': 'Home',
      'it': 'Casa',
    },
  },
  // FinishQuiz
  {
    'jaiuzih3': {
      'en': '150',
      'it': '',
    },
    '5ggu0tn1': {
      'en': 'WELCOME TO MODIE!',
      'it': '',
    },
    'vnsl9gqz': {
      'en':
          'As a thank you for becoming a Modier, we have given you 150 welcome points',
      'it': '',
    },
    '2vtavthc': {
      'en': 'COLLECT REWARD',
      'it': '',
    },
    '0r1iufro': {
      'en': 'Home',
      'it': '',
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
      'it': 'Hai bisogno di aiuto? Contatta  ',
    },
    '70exfmb7': {
      'en': 'hello@modie.co',
      'it': 'hello@modie.co',
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
    'arbfjsfg': {
      'en': 'First Name',
      'it': 'Nome di battesimo',
    },
    'hd5o26ia': {
      'en': '',
      'it': '',
    },
    '22cnghd3': {
      'en': 'Surname',
      'it': 'Cognome',
    },
    'fchgwt8k': {
      'en': '',
      'it': '',
    },
    'vak0x190': {
      'en': 'Username',
      'it': 'Nome utente',
    },
    '12rtcmgs': {
      'en': '',
      'it': '',
    },
    'yxlbbjb8': {
      'en': 'This username is already in use',
      'it': 'Questo nome utente è già in uso',
    },
    'ptxjm96j': {
      'en': 'Date of Birth',
      'it': 'Data di nascita',
    },
    '6oaklsam': {
      'en': 'Birthday (dd/mm/yyyy)',
      'it': 'Compleanno (gg/mm/aaaa)',
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
    'n8rpn4lp': {
      'en': 'First Name',
      'it': 'Nome di battesimo',
    },
    'abdw5h3f': {
      'en': '',
      'it': '',
    },
    '4rk2yen8': {
      'en': 'Surname',
      'it': 'Cognome',
    },
    'x3kjzm9q': {
      'en': '',
      'it': '',
    },
    'fsacblyr': {
      'en': 'Dialing Code',
      'it': 'Prefisso telefonico',
    },
    'lrgiern1': {
      'en': '',
      'it': '',
    },
    'k0rkemf5': {
      'en': 'Phone',
      'it': 'Telefono',
    },
    'e7h0h1vl': {
      'en': '',
      'it': '',
    },
    'lb0hcv5s': {
      'en': 'USE MY CURRENT LOCATION',
      'it': 'USA LA MIA POSIZIONE ATTUALE',
    },
    'h1kz2ka6': {
      'en': 'Address Line 1',
      'it': 'Indirizzo Linea 1',
    },
    'n8u4gv6e': {
      'en': '',
      'it': '',
    },
    'x66y0zbk': {
      'en': 'Address Line 2',
      'it': 'Indirizzo riga 2',
    },
    'krol4k5u': {
      'en': '',
      'it': '',
    },
    'hmejbrzn': {
      'en': 'City / Town',
      'it': 'Città / Paese',
    },
    'rwdcae9b': {
      'en': '',
      'it': '',
    },
    '4qzi8n2y': {
      'en': 'Postcode',
      'it': 'Codice postale',
    },
    'zd47x32u': {
      'en': '',
      'it': '',
    },
    '860t6rpr': {
      'en': 'Country',
      'it': 'Paese',
    },
    '2oq4vgm9': {
      'en': '',
      'it': '',
    },
    'ekck0f2z': {
      'en': 'SAVE ADDRESS',
      'it': 'SALVA INDIRIZZO',
    },
    'ga7utx82': {
      'en': 'Field is required',
      'it': '',
    },
    'b15z0k7l': {
      'en': 'Please choose an option from the dropdown',
      'it': '',
    },
    '0z0q44uu': {
      'en': 'Field is required',
      'it': '',
    },
    'vzijunu5': {
      'en': 'Please choose an option from the dropdown',
      'it': '',
    },
    'bzlmmjjt': {
      'en': 'Field is required',
      'it': '',
    },
    'vokz5f6c': {
      'en': 'Please choose an option from the dropdown',
      'it': '',
    },
    '01ro4kw8': {
      'en': 'Field is required',
      'it': '',
    },
    '50d7aeib': {
      'en': 'Please choose an option from the dropdown',
      'it': '',
    },
    'a2itiihl': {
      'en': 'Field is required',
      'it': '',
    },
    'zzp0ff3p': {
      'en': 'Please choose an option from the dropdown',
      'it': '',
    },
    'hn7u0my2': {
      'en': 'Field is required',
      'it': '',
    },
    '6ne0j0ck': {
      'en': 'Please choose an option from the dropdown',
      'it': '',
    },
    'brnfk8b5': {
      'en': 'Field is required',
      'it': '',
    },
    '0tt2mhh9': {
      'en': 'Please choose an option from the dropdown',
      'it': '',
    },
    'or2f46w3': {
      'en': 'Field is required',
      'it': '',
    },
    'd1drvr6p': {
      'en': 'Please choose an option from the dropdown',
      'it': '',
    },
    'b82fzccp': {
      'en': 'Field is required',
      'it': '',
    },
    '794iccll': {
      'en': 'Please choose an option from the dropdown',
      'it': '',
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
    'f4pd5vrz': {
      'en': 'Home',
      'it': '',
    },
  },
  // FAQs
  {
    '63gvizky': {
      'en': 'FAQS',
      'it': '',
    },
    'jqy95btn': {
      'en': 'Home',
      'it': '',
    },
  },
  // FAQsCopy
  {
    'curpy294': {
      'en': 'FAQS',
      'it': '',
    },
    'ytksb0vh': {
      'en': 'How do I earn rewards points?',
      'it': 'Come posso guadagnare punti premio?',
    },
    'oqhehfgo': {
      'en': 'Couldn’t find what you were looking for?',
      'it': '',
    },
    'pkt5y0k8': {
      'en': 'Feel free to contact us at hello@modie.com',
      'it': '',
    },
    '94s4ydor': {
      'en': 'Home',
      'it': '',
    },
  },
  // LoadPage
  {
    'e1s5ehhr': {
      'en': 'Home',
      'it': '',
    },
  },
  // ReviewComp
  {
    'gfe7f338': {
      'en': 'REVIEW TITLE',
      'it': 'TITOLO DELLA RECENSIONE',
    },
    'bc5er89c': {
      'en': '@idasaporito',
      'it': '@idasaporito',
    },
    'msxqowjv': {
      'en': 'OVERALL SCORE',
      'it': 'PUNTEGGIO TOTALE',
    },
    'zy4p7ux2': {
      'en': 'A.L.C.',
      'it': 'A.L.C.',
    },
    '69v3m3ep': {
      'en': 'Axel Satin-Crepe Blazer',
      'it': 'Blazer in raso e crepe Axel',
    },
    'tcimxjr0': {
      'en': '\$120',
      'it': '120 \$',
    },
    '50hr3g6t': {
      'en': 'SHOP NOW ',
      'it': 'ACQUISTA ORA',
    },
    'b6hvpv6p': {
      'en': 'SEE FULL REVIEW',
      'it': 'GUARDA LA RECENSIONE COMPLETA',
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
      'it': '',
    },
  },
  // ReviewCompCopy
  {
    'w6x08xcv': {
      'en': 'REVIEW TITLE',
      'it': 'TITOLO DELLA RECENSIONE',
    },
    'anqfx6lm': {
      'en': '@idasaporito',
      'it': '@idasaporito',
    },
    '0fv8jqgr': {
      'en': 'OVERALL SCORE',
      'it': 'PUNTEGGIO TOTALE',
    },
    '27wxn9hx': {
      'en': 'A.L.C.',
      'it': 'A.L.C.',
    },
    'barpubiu': {
      'en': 'Axel Satin-Crepe Blazer',
      'it': 'Blazer in raso e crepe Axel',
    },
    '1mxz4qoi': {
      'en': '\$120',
      'it': '120 \$',
    },
    'pmwq6g0k': {
      'en': 'SHOP NOW ',
      'it': 'ACQUISTA ORA',
    },
    'kk6fxjvs': {
      'en': 'SEE FULL REVIEW',
      'it': 'GUARDA LA RECENSIONE COMPLETA',
    },
  },
  // ReviewCompCopy2
  {
    'mipko0gk': {
      'en': 'REVIEW TITLE',
      'it': '',
    },
    'fe67986n': {
      'en': '@idasaporito',
      'it': '',
    },
    'nrmc1wxr': {
      'en': 'OVERALL SCORE',
      'it': '',
    },
    'jtsl3650': {
      'en': 'A.L.C.',
      'it': '',
    },
    'xlxvvg35': {
      'en': 'Axel Satin-Crepe Blazer',
      'it': '',
    },
    'sud9ojx5': {
      'en': '\$120',
      'it': '',
    },
    'e9jnprp4': {
      'en': 'SHOP NOW ',
      'it': '',
    },
    'ujn7q0o6': {
      'en': 'SEE FULL REVIEW',
      'it': '',
    },
  },
  // FAQsComp
  {
    '0w9aph6s': {
      'en':
          'Hello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello World',
      'it': '',
    },
  },
  // Miscellaneous
  {
    'uz38x5yt': {
      'en':
          'Turning on location services allow us to show you when pals are nearby',
      'it': '',
    },
    '3cp75ohg': {
      'en': '',
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
