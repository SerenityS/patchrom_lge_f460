.class public final Lcom/lge/constants/SettingsConstants$AssistDial;
.super Ljava/lang/Object;
.source "SettingsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/constants/SettingsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssistDial"
.end annotation


# static fields
.field public static final AREA:Ljava/lang/String; = "area"

.field public static final COUNTRYCODE:Ljava/lang/String; = "countrycode"

.field public static final COUNTRYINDEX:Ljava/lang/String; = "countryindex"

.field public static final COUNTRYNAME:Ljava/lang/String; = "countryname"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "countryindex ASC"

.field public static final DEFAULT_SUB_VIBRATE_NAME:Ljava/lang/String; = "default_sub_vibrate_name"

.field public static final DEFAULT_SUB_VIBRATE_PATTERN:Ljava/lang/String; = "default_sub_vibrate_pattern"

.field public static final DEFAULT_VIBRATE_NAME:Ljava/lang/String; = "default_vibrate_name"

.field public static final DEFAULT_VIBRATE_PATTERN:Ljava/lang/String; = "default_vibrate_pattern"

.field public static final GENTLE_VIBRATION_STATUS:Ljava/lang/String; = "gentle_vibration_status"

.field public static final HANDS_FREE_MODE_CALL:Ljava/lang/String; = "hands_free_mode_call"

.field public static final HANDS_FREE_MODE_MESSAGE:Ljava/lang/String; = "hands_free_mode_message"

.field public static final HANDS_FREE_MODE_READ_MESSAGE:Ljava/lang/String; = "hands_free_mode_read_message"

.field public static final HANDS_FREE_MODE_STATUS:Ljava/lang/String; = "hands_free_mode_status"

.field public static final IDDPREFIX:Ljava/lang/String; = "iddprefix"

.field public static final LENGTH:Ljava/lang/String; = "length"

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final NANP:Ljava/lang/String; = "nanp"

.field public static final NDDPREFIX:Ljava/lang/String; = "nddprefix"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final QUIETMODE_AUTO_REPLY_MESSAGE:Ljava/lang/String; = "quietmode_auto_reply_message"

.field public static final QUIETMODE_AUTO_REPLY_OPTION:Ljava/lang/String; = "quietmode_auto_reply_option"

.field public static final QUIETMODE_SETTIME:Ljava/lang/String; = "quiet_mode_settime"

.field public static final QUIET_MODE_AUTO_REPLY_MESSAGE_ORIGINAL:Ljava/lang/String; = "quiet_mode_auto_reply_message_original"

.field public static final QUIET_MODE_BACKUP_STATUS:Ljava/lang/String; = "quiet_mode_backup_status"

.field public static final QUIET_MODE_BEFORE_LED_STATE:Ljava/lang/String; = "queit_mode_before_led_state"

.field public static final QUIET_MODE_BEFORE_STATUS:Ljava/lang/String; = "quiet_time_before_status"

.field public static final QUIET_MODE_BOOT_NOTI_UPDATE:Ljava/lang/String; = "quiet_mode_boot_noti_update"

.field public static final QUIET_MODE_CHECK_BLOCK_ALARMS:Ljava/lang/String; = "quiet_mode_check_block_alarms"

.field public static final QUIET_MODE_CHECK_BLOCK_INCOMING_CALLS:Ljava/lang/String; = "quiet_mode_check_block_incoming_calls"

.field public static final QUIET_MODE_CHECK_BLOCK_NOTIFICATIONS:Ljava/lang/String; = "quiet_mode_check_block_notifications"

.field public static final QUIET_MODE_CHECK_REPEATED_CALL:Ljava/lang/String; = "quiet_mode_check_repeated_call"

.field public static final QUIET_MODE_CHECK_SCHEDULED_TIME:Ljava/lang/String; = "quiet_time_check_scheduled_time"

.field public static final QUIET_MODE_CHECK_VIBRATE:Ljava/lang/String; = "quiet_mode_check_vibrate"

.field public static final QUIET_MODE_FUNCTION_STATUS:Ljava/lang/String; = "quiet_mode_function_status"

.field public static final QUIET_MODE_STATUS:Ljava/lang/String; = "quiet_mode_status"

.field public static final QUIET_MODE_SUPPROT_MODEL:Ljava/lang/String; = "quiet_mode_support_model"

.field public static final QUIET_MODE_VIBRATE_CHECK:Ljava/lang/String; = "quiet_mode_vibrate_check"

.field public static final QUIET_TIMECHANGED_STATUS:Ljava/lang/String; = "quiet_timechanged_status"

.field public static final QUIET_TIME_BOOT_CASE:Ljava/lang/String; = "quiet_time_boot_case"

.field public static final QUIET_TIME_CHANGE_COUNT:Ljava/lang/String; = "quiet_time_change_count"

.field public static final QUIET_TIME_CHECK_DAYS:Ljava/lang/String; = "quiet_time_check_days"

.field public static final QUIET_TIME_CHECK_REPEATED_CALL:Ljava/lang/String; = "quiet_time_check_repeated_call"

.field public static final QUIET_TIME_CHECK_SCHEDULED_TIME:Ljava/lang/String; = "quiet_time_check_scheduled_time"

.field public static final QUIET_TIME_CHECK_VIBRATE:Ljava/lang/String; = "quiet_time_check_vibrate"

.field public static final QUIET_TIME_END_HOUR:Ljava/lang/String; = "quiet_time_end_hour"

.field public static final QUIET_TIME_END_MINUTE:Ljava/lang/String; = "quiet_time_end_minute"

.field public static final QUIET_TIME_END_TIME:Ljava/lang/String; = "quiet_time_end_start_time"

.field public static final QUIET_TIME_FIRST_START_FLAG:Ljava/lang/String; = "quiet_time_first_start_flag"

.field public static final QUIET_TIME_MODE_OF_LAST:Ljava/lang/String; = "quiet_time_mode_of_last"

.field public static final QUIET_TIME_SAVE_TIME:Ljava/lang/String; = "quiet_time_save_time"

.field public static final QUIET_TIME_START_HOUR:Ljava/lang/String; = "quiet_time_start_hour"

.field public static final QUIET_TIME_START_MINUTE:Ljava/lang/String; = "quiet_time_start_minute"

.field public static final QUIET_TIME_START_TIME:Ljava/lang/String; = "quiet_time_start_time"

.field public static final SMART_RINGTONE:Ljava/lang/String; = "smart_ringtone"

.field public static final TABLE_NAME:Ljava/lang/String; = "assist_dial"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "countryindex"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "countryname"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "countrycode"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "iddprefix"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "nddprefix"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "nanp"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "area"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "length"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/constants/SettingsConstants$AssistDial;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
