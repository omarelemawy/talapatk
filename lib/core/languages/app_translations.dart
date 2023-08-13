import 'ar_translations.dart';
import 'en_translations.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translations = {
    'ar': ar,
    'en': en,
  };
}

abstract class LocaleKeys {
  /// Exceptions Messages ======================================================
  static const networkFailure = "networkFailure";
  static const unVerifiedFailure = "unVerifiedFailure";
  static const serverFailure = 'serverFailure';
  static const unAuthMessage = 'unAuthMessage';
  static const emptyCacheMessage = 'emptyCacheMessage';
  static const unExpectedError = 'unExpectedError';
  static const forgotYourPassword = 'unExpectedError';

  /// Login Page ===============================================================
  static const login = 'login';
  static const phoneNumber = 'phoneNumber';
  static const enterPass = 'enterPass';
  static const pass = 'pass';
  static const email = 'email';
  static const enterYourEmail = 'enterYourEmail';
  static const editSuccess = 'editSuccess';

  /// Edit User Page ===========================================================

  /// Card Event Page =================================================================
  static const edit = "edit";
  static const viewDetails = "viewDetails";
  static const completion = "completion";

  /// Reset Password Page ======================================================
  static const resetThePassword = 'resetThePassword';
  static const enterThePassword = 'enterThePassword';
  static const newPassword = 'newPassword';
  static const resetNewPassword = 'resetNewPassword';
  static const save = 'save';
  static const name = 'name';
  static const enterYourName = 'enterYourName';

  /// MainLayout Page ==========================================================
  static const wellCome = "wellCome";
  static const wellComeText = "wellComeText";
  static const completedEvent = "completedEvent";
  static const eventIsComing = "eventIsComing";
  static const createNewEvent = "createNewEvent";
  static const savedEvent = "savedEvent";
  static const upcomingEvents = "upcomingEvents";
  static const seeAll = "seeAll";

  /// AddDevices Page ==========================================================
  static const saveAndContinue = "saveAndContinue";
  static const addDevice = "addDevice";
  static const selectOneOrMoreDevices = "selectOneOrMoreDevices";
  static const selectDevice = "selectDevice";
  static const enterImplementationDate = "enterImplementationDate";
  static const receivedDate = "receivedDate";
  static const responsibleForTheDevices = "responsibleForTheDevices";
  static const selectAdministrator = "selectAdministrator";
  static const newDevice = "newDevice";
  static const pleaseEnterNumberOfUsedDevice = "pleaseEnterNumberOfUsedDevice";
  static const enterCountOfUsed = "enterCountOfUsed";
  static const countOfUsed = "countOfUsed";

  /// Add Employee============================================================
  static const newEmployee = "newEmployee";
  static const confirm = "confirm";
  static const chooseEmployeesJoiningEvent = "chooseEmployeesJoiningEvent";
  static const selectEmployeeOrMore = "selectEmployeeOrMore";

  /// Add New Event =========================================================
  static const eventWasCreatedSuccessfully = "eventWasCreatedSuccessfully";
  static const eventCreateSuccessfullyText1 = "eventCreateSuccessfullyText1";
  static const eventCreateSuccessfullyText2 = "eventCreateSuccessfullyText2";
  static const eventCreateSuccessfullyText3 = "eventCreateSuccessfullyText3";
  static const newEvent = "newEvent";
  static const enterEventName = "enterEventName";
  static const eventName = "eventName";
  static const enterDateOfEvent = "enterDateOfEvent";
  static const dateOfEvent = "dateOfEvent";
  static const from = "from";
  static const time = "time";
  static const to = "to";
  static const dateOfFinishedEvent = "dateOfFinishedEvent";
  static const enterTheEventLocation = "enterTheEventLocation";
  static const enterTheEvent = "enterTheEvent";
  static const eventDescriptionHint = "eventDescriptionHint";
  static const eventDescription = "eventDescription";
  static const responsibleAdmin = "responsibleAdmin";
  static const enterResponsibleAdmin = "enterResponsibleAdmin";
  static const enterAdminPhoneNumber = "enterAdminPhoneNumber";
  static const startNow = "startNow";
  static const remindLater = "remindLater";

  /// All Event =========================================================
  static const finishedEvents = 'finishedEvents';
  static const allEvents = 'allEvents';
  static const allComingEvent = 'allComingEvent';

  /// Details Event =========================================================
  static const viewFinancialReports = 'viewFinancialReports';
  static const finishEvent = 'finishEvent';
  static const detailsEvent = 'detailsEvent';
  static const responsiblePerson = 'responsiblePerson';
  static const workTeam = 'workTeam';
  static const devices = 'devices';
  static const productName = 'productName';
  static const amount = 'amount';
  static const addNotes = 'addNotes';
  static const financialReports = 'financialReports';
  static const totalItems = 'totalItems';
  static const totalAmount = 'totalAmount';
  static const itemsTable = 'itemsTable';
  static const finishedEventText = 'finishedEventText';
  static const writeYourFeedbackHere = 'writeYourFeedbackHere';
  static const generalNotes = 'generalNotes';
  static const confirmTermination = 'confirmTermination';
  static const archives = 'archives';
  static const finished = 'finished';
  static const new_ = 'new_';
  static const allEmployees = 'allEmployees';
  static const employees = 'employees';
  static const scheduleOfWork = 'scheduleOfWork';
  static const addDevices = 'addDevices';
  static const varietiesText = 'varietiesText';
  static const thereAreNoDevicesAddedFoThisEvent =
      'thereAreNoDevicesAddedFoThisEvent';

  /// More Page =========================================================
  static const more = "more";
  static const events = "events";
  static const bookMarks = "bookMarks";
  static const usedDevices = "usedDevices";
  static const messages = "messages";
  static const lang = "lang";
  static const logOut = "logOut";
  static const employeeDetails = "employeeDetails";
  static const sendMessage = "sendMessage";
  static const hardwareUsed = "hardwareUsed";
  static const editProfile = "editProfile";
  static const participatedEvents = "participatedEvents";
  static const sentVoiceMessage = "sentVoiceMessage";

  /// Messenger page============================================================
  static const allMessage = "allMessage";
  static const weekAgo = "weekAgo";
  static const lastWeek = "lastWeek";
  static const daysAgo = "daysAgo";
  static const yesterday = "yesterday";
  static const hoursAgo = "hoursAgo";
  static const minutesAgo = "minutesAgo";
  static const secondsAgo = "secondsAgo";
  static const justNow = "justNow";
  static const totalEventsParticipatedIn = "totalEventsParticipatedIn";
  static const writeHire = "writeHire";

  /// ============================================================

  static const enterValidEmail = 'enterValidEmail';
  static const enterPhoneNumber = 'enterPhoneNumber';
  static const emptyPassword = 'emptyPassword';
  static const emptyFiled = 'emptyFiled';

  static const validCardNumber = 'validCardNumber';
  static const enterValidPassword = 'enterValidPassword';
}
