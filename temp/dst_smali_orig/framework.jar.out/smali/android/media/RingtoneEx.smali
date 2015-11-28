.class public Landroid/media/RingtoneEx;
.super Landroid/media/Ringtone;
.source "RingtoneEx.java"


# static fields
.field private static final CUPSS_ALARM_FILEPATH:Ljava/lang/String;

.field private static final CUPSS_NOTIFICATION_FILEPATH:Ljava/lang/String;

.field private static final CUPSS_RINGTONE_FILEPATH:Ljava/lang/String;

.field public static final DEFAULT_ALARMS_FILEPATH:Ljava/lang/String;

.field public static final DEFAULT_NOTIFICATIONS_FILEPATH:Ljava/lang/String;

.field public static final DEFAULT_RINGTONES_FILEPATH:Ljava/lang/String;

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final ERROR_CHECK_INIT:I = 0x0

.field private static final ERROR_CHECK_SETDEFAULT:I = 0x2

.field private static final ERROR_CHECK_START:I = 0x1

.field private static final LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "RingtoneEx"


# instance fields
.field errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mDrmConsume:Z

.field private mDrmFile:I

.field private mDrmPath:Ljava/lang/String;

.field private mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

.field private mDrmValid:Z

.field private mErrorCheck:I

.field private mIsSmartRingtoneOnNoiseEstimation:Z

.field private mIsSoundException:Z

.field private mSmartRingtone:Lcom/lge/media/SmartRingtone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/ringtones/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/RingtoneEx;->DEFAULT_RINGTONES_FILEPATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/notifications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/RingtoneEx;->DEFAULT_NOTIFICATIONS_FILEPATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/alarms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.config.alarm_alert"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/RingtoneEx;->DEFAULT_ALARMS_FILEPATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.lge.capp_cupss.rootdir"

    const-string v2, "/cust"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ringtones/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/RingtoneEx;->CUPSS_RINGTONE_FILEPATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.lge.capp_cupss.rootdir"

    const-string v2, "/cust"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/alarms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.config.alarm_alert"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/RingtoneEx;->CUPSS_ALARM_FILEPATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.lge.capp_cupss.rootdir"

    const-string v2, "/cust"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/notifications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/RingtoneEx;->CUPSS_NOTIFICATION_FILEPATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowRemote"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    iput v4, p0, Landroid/media/RingtoneEx;->mDrmFile:I

    iput-boolean v4, p0, Landroid/media/RingtoneEx;->mDrmValid:Z

    iput-object v5, p0, Landroid/media/RingtoneEx;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    iput-boolean v4, p0, Landroid/media/RingtoneEx;->mDrmConsume:Z

    iput-object v5, p0, Landroid/media/RingtoneEx;->mDrmPath:Ljava/lang/String;

    iput-boolean v4, p0, Landroid/media/RingtoneEx;->mIsSoundException:Z

    iput-object v5, p0, Landroid/media/RingtoneEx;->mSmartRingtone:Lcom/lge/media/SmartRingtone;

    iput-boolean v4, p0, Landroid/media/RingtoneEx;->mIsSmartRingtoneOnNoiseEstimation:Z

    new-instance v1, Landroid/media/RingtoneEx$1;

    invoke-direct {v1, p0}, Landroid/media/RingtoneEx$1;-><init>(Landroid/media/RingtoneEx;)V

    iput-object v1, p0, Landroid/media/RingtoneEx;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iput v4, p0, Landroid/media/RingtoneEx;->mErrorCheck:I

    iget-object v1, p0, Landroid/media/RingtoneEx;->mSmartRingtone:Lcom/lge/media/SmartRingtone;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/RingtoneEx;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lcom/lge/media/SmartRingtone;

    iget-object v2, p0, Landroid/media/RingtoneEx;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Landroid/media/RingtoneEx;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/lge/media/SmartRingtone;-><init>(Landroid/media/AudioManager;Landroid/content/Context;)V

    iput-object v1, p0, Landroid/media/RingtoneEx;->mSmartRingtone:Lcom/lge/media/SmartRingtone;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "ro.lge.audio_soundexception"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/RingtoneEx;->mIsSoundException:Z

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "RingtoneEx"

    const-string v2, "Couldn\'t instantiate SmartRingtone"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v5, p0, Landroid/media/RingtoneEx;->mSmartRingtone:Lcom/lge/media/SmartRingtone;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    const-string v1, "RingtoneEx"

    const-string v2, "Do NOT make smartRingtone because music is active."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowRemote"    # Z
    .param p3, "streamType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/RingtoneEx;-><init>(Landroid/content/Context;Z)V

    iput p3, p0, Landroid/media/RingtoneEx;->mStreamType:I

    return-void
.end method

.method static synthetic access$000(Landroid/media/RingtoneEx;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/RingtoneEx;

    .prologue
    iget v0, p0, Landroid/media/RingtoneEx;->mErrorCheck:I

    return v0
.end method

.method static synthetic access$002(Landroid/media/RingtoneEx;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/RingtoneEx;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/RingtoneEx;->mErrorCheck:I

    return p1
.end method

.method static synthetic access$100(Landroid/media/RingtoneEx;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/RingtoneEx;

    .prologue
    invoke-direct {p0}, Landroid/media/RingtoneEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkDRM(Ljava/lang/String;)I
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Lcom/lge/lgdrm/DrmManager;->isSupportedExtension(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/media/RingtoneEx;->mDrmFile:I

    iget v4, p0, Landroid/media/RingtoneEx;->mDrmFile:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    iget v4, p0, Landroid/media/RingtoneEx;->mDrmFile:I

    const/16 v5, 0x3000

    if-le v4, v5, :cond_3

    :cond_2
    iput v1, p0, Landroid/media/RingtoneEx;->mDrmFile:I

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v1, p0, Landroid/media/RingtoneEx;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v0

    .local v0, "session":Lcom/lge/lgdrm/DrmContentSession;
    if-nez v0, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/lgdrm/DrmContentSession;->setDecryptionInfo(Z)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/RingtoneEx;->mDrmValid:Z

    iput-object v0, p0, Landroid/media/RingtoneEx;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_0

    .end local v0    # "session":Lcom/lge/lgdrm/DrmContentSession;
    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_0
.end method

.method private getDefaultAudioType()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, "audioType":Ljava/lang/String;
    iget v1, p0, Landroid/media/RingtoneEx;->mStreamType:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const-string v0, "is_ringtone"

    :goto_0
    const-string v1, "RingtoneEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultAudioType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_1
    const-string v0, "is_ringtone"

    goto :goto_0

    :pswitch_2
    const-string v0, "is_notification"

    goto :goto_0

    :pswitch_3
    const-string v0, "is_alarm"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getDefaultPath()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .local v4, "defaultRingtone":Ljava/lang/String;
    iget v5, p0, Landroid/media/RingtoneEx;->mStreamType:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    sget-object v4, Landroid/media/RingtoneEx;->DEFAULT_NOTIFICATIONS_FILEPATH:Ljava/lang/String;

    :goto_0
    const-string v5, "RingtoneEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "default ringtone path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :pswitch_1
    iget-object v5, p0, Landroid/media/RingtoneEx;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2060025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .local v0, "chameleonSupported":Z
    const-string v5, "RingtoneEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chameleonSupported : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/media/RingtoneEx;->getDefaultRingtonePathChameleon()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/io/File;

    sget-object v5, Landroid/media/RingtoneEx;->CUPSS_RINGTONE_FILEPATH:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "custRingtone":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v4, Landroid/media/RingtoneEx;->CUPSS_RINGTONE_FILEPATH:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v4, Landroid/media/RingtoneEx;->DEFAULT_RINGTONES_FILEPATH:Ljava/lang/String;

    goto :goto_0

    .end local v0    # "chameleonSupported":Z
    .end local v3    # "custRingtone":Ljava/io/File;
    :pswitch_2
    new-instance v2, Ljava/io/File;

    sget-object v5, Landroid/media/RingtoneEx;->CUPSS_NOTIFICATION_FILEPATH:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "custNotification":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v4, Landroid/media/RingtoneEx;->CUPSS_NOTIFICATION_FILEPATH:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v4, Landroid/media/RingtoneEx;->DEFAULT_NOTIFICATIONS_FILEPATH:Ljava/lang/String;

    goto :goto_0

    .end local v2    # "custNotification":Ljava/io/File;
    :pswitch_3
    new-instance v1, Ljava/io/File;

    sget-object v5, Landroid/media/RingtoneEx;->CUPSS_ALARM_FILEPATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "custAlarm":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v4, Landroid/media/RingtoneEx;->CUPSS_ALARM_FILEPATH:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    sget-object v4, Landroid/media/RingtoneEx;->DEFAULT_ALARMS_FILEPATH:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getDefaultRingtonePathChameleon()Ljava/lang/String;
    .locals 6

    .prologue
    sget-object v2, Landroid/media/RingtoneEx;->DEFAULT_RINGTONES_FILEPATH:Ljava/lang/String;

    .local v2, "ringtone":Ljava/lang/String;
    const-string v1, "/carrier/media/ringtones/default_ringer.mp3"

    .local v1, "carrierRingtonePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "carrierRingtone":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "RingtoneEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ringtone in CP, set to CP tone : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    const-string v3, "RingtoneEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No Ringtone in CP, set to OEM : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/media/RingtoneEx;->DEFAULT_RINGTONES_FILEPATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/media/RingtoneEx;->DEFAULT_RINGTONES_FILEPATH:Ljava/lang/String;

    goto :goto_0
.end method

.method private getDefaultTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    const/4 v11, 0x1

    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "res":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .local v9, "title":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "defaultPath":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "defaultAudioType":Ljava/lang/String;
    iget-object v1, p0, Landroid/media/RingtoneEx;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/lge/media/RingtoneManagerEx;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/RingtoneEx;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/lge/media/RingtoneManagerEx;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/RingtoneEx;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/lge/media/RingtoneManagerEx;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x100

    if-ne v1, v2, :cond_2

    :cond_0
    sget-object v8, Landroid/media/RingtoneEx;->DEFAULT_NOTIFICATIONS_FILEPATH:Ljava/lang/String;

    const-string v7, "is_notification"

    :goto_0
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data =? AND mime_type =?  AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " =? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-string v10, "application/ogg"

    aput-object v10, v4, v5

    const/4 v5, 0x2

    const-string v10, "1"

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_4

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v11, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget v1, p0, Landroid/media/RingtoneEx;->mStreamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    const v1, 0x20d02f9

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    :goto_2
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v9

    :cond_2
    invoke-direct {p0}, Landroid/media/RingtoneEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Landroid/media/RingtoneEx;->getDefaultAudioType()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_3
    const v1, 0x1040451

    const/4 v2, 0x1

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_4
    const-string v1, "RingtoneEx"

    const-string v2, "Default ringtone does NOT exist. "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x1040454

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    goto :goto_2

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected static getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "followSettingsUri"    # Z

    .prologue
    const/4 v9, 0x0

    .local v9, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "res":Landroid/content/ContentResolver;
    const/4 v11, 0x0

    .local v11, "title":Ljava/lang/String;
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .local v8, "authority":Ljava/lang/String;
    const-string v1, "settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_3

    invoke-static {p1}, Lcom/lge/media/RingtoneManagerEx;->getDefaultType(Landroid/net/Uri;)I

    move-result v10

    .local v10, "ringToneType":I
    invoke-static {p0, v10}, Lcom/lge/media/RingtoneManagerEx;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .local v7, "actualUri":Landroid/net/Uri;
    const/4 v1, 0x0

    invoke-static {p0, v7, v1}, Landroid/media/RingtoneEx;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v6

    .local v6, "actualTitle":Ljava/lang/String;
    if-nez v6, :cond_1

    const/4 v1, 0x0

    .end local v6    # "actualTitle":Ljava/lang/String;
    .end local v7    # "actualUri":Landroid/net/Uri;
    .end local v8    # "authority":Ljava/lang/String;
    .end local v10    # "ringToneType":I
    :cond_0
    :goto_0
    return-object v1

    .restart local v6    # "actualTitle":Ljava/lang/String;
    .restart local v7    # "actualUri":Landroid/net/Uri;
    .restart local v8    # "authority":Ljava/lang/String;
    .restart local v10    # "ringToneType":I
    :cond_1
    const/4 v1, 0x2

    if-eq v10, v1, :cond_2

    const/16 v1, 0x10

    if-eq v10, v1, :cond_2

    const/16 v1, 0x100

    if-ne v10, v1, :cond_4

    :cond_2
    const v1, 0x20d02f9

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .end local v6    # "actualTitle":Ljava/lang/String;
    .end local v7    # "actualUri":Landroid/net/Uri;
    .end local v8    # "authority":Ljava/lang/String;
    .end local v10    # "ringToneType":I
    :cond_3
    :goto_1
    move-object v1, v11

    goto :goto_0

    .restart local v6    # "actualTitle":Ljava/lang/String;
    .restart local v7    # "actualUri":Landroid/net/Uri;
    .restart local v8    # "authority":Ljava/lang/String;
    .restart local v10    # "ringToneType":I
    :cond_4
    const v1, 0x1040451

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .end local v6    # "actualTitle":Ljava/lang/String;
    .end local v7    # "actualUri":Landroid/net/Uri;
    .end local v10    # "ringToneType":I
    :cond_5
    :try_start_0
    const-string v1, "media"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v2, Landroid/media/RingtoneEx;->MEDIA_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :cond_6
    :goto_2
    if-eqz v9, :cond_7

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v9, :cond_0

    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    if-eqz v9, :cond_0

    goto :goto_3

    :catchall_0
    move-exception v1

    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1

    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V
    .locals 7
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "player"    # Landroid/media/MediaPlayer;
    .param p3, "res"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getProperty(I)I
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget v2, p0, Landroid/media/RingtoneEx;->mDrmFile:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Landroid/media/RingtoneEx;->mDrmValid:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    iget v2, p0, Landroid/media/RingtoneEx;->mDrmFile:I

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/media/RingtoneEx;->mDrmFile:I

    const/16 v3, 0x31

    if-eq v2, v3, :cond_3

    iget v2, p0, Landroid/media/RingtoneEx;->mDrmFile:I

    const/16 v3, 0x501

    if-eq v2, v3, :cond_3

    iget v2, p0, Landroid/media/RingtoneEx;->mDrmFile:I

    const/16 v3, 0x1800

    if-ne v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, ""

    .local v0, "mTitle":Ljava/lang/String;
    iget-object v2, p0, Landroid/media/RingtoneEx;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/RingtoneEx;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x1040452

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .end local v0    # "mTitle":Ljava/lang/String;
    .local v1, "mTitle":Ljava/lang/String;
    :goto_0
    return-object v1

    .end local v1    # "mTitle":Ljava/lang/String;
    .restart local v0    # "mTitle":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/media/RingtoneEx;->mUri:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Landroid/media/RingtoneEx;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroid/media/RingtoneEx;->getDefaultTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .end local v0    # "mTitle":Ljava/lang/String;
    .restart local v1    # "mTitle":Ljava/lang/String;
    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/RingtoneEx;->mErrorCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "RingtoneEx"

    const-string v1, "Can\'t check isPlaying() during ErrorChecking"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public play()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/RingtoneEx;->play(Z)V

    return-void
.end method

.method public play(Z)V
    .locals 5
    .param p1, "loop"    # Z

    .prologue
    iget v2, p0, Landroid/media/RingtoneEx;->mStreamType:I

    invoke-static {v2}, Lcom/lge/media/LGAudioSystem;->checkPlayCondition(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/media/RingtoneEx;->mSmartRingtone:Lcom/lge/media/SmartRingtone;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/media/RingtoneEx;->mIsSmartRingtoneOnNoiseEstimation:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/media/RingtoneEx;->mSmartRingtone:Lcom/lge/media/SmartRingtone;

    invoke-virtual {v2}, Lcom/lge/media/SmartRingtone;->onExitRecordingLoop()V

    :cond_2
    iget-object v2, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/media/RingtoneEx;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v2, p0, Landroid/media/RingtoneEx;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/media/RingtoneEx;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v2, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Landroid/media/RingtoneEx;->mIsSoundException:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/media/RingtoneEx;->mStreamType:I

    iget-object v3, p0, Landroid/media/RingtoneEx;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v2, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Landroid/media/RingtoneEx;->mAllowRemote:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/media/RingtoneEx;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object v0

    .local v0, "canonicalUri":Landroid/net/Uri;
    :try_start_0
    iget-object v2, p0, Landroid/media/RingtoneEx;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v3, p0, Landroid/media/RingtoneEx;->mRemoteToken:Landroid/os/Binder;

    iget v4, p0, Landroid/media/RingtoneEx;->mStreamType:I

    invoke-interface {v2, v3, v0, v4}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RingtoneEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem playing ringtone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "canonicalUri":Landroid/net/Uri;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5
    const-string v2, "RingtoneEx"

    const-string v3, "Neither local nor remote playback available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    iget-object v0, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const-string v0, "RingtoneEx"

    const-string v1, "setOnCompletionListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :cond_0
    return-void
.end method

.method public setProperty(Z)V
    .locals 1
    .param p1, "consume"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/media/RingtoneEx;->mDrmValid:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroid/media/RingtoneEx;->mDrmConsume:Z

    :cond_0
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x0

    .local v9, "setDefault":Z
    invoke-virtual {p0}, Landroid/media/RingtoneEx;->destroyLocalPlayer()V

    iput-object p1, p0, Landroid/media/RingtoneEx;->mUri:Landroid/net/Uri;

    iget-object v10, p0, Landroid/media/RingtoneEx;->mUri:Landroid/net/Uri;

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/media/RingtoneEx;->mUri:Landroid/net/Uri;

    const-string v11, ""

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v10, Landroid/media/MediaPlayer;

    invoke-direct {v10}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v10, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    .local v4, "path":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "nStatus":I
    :try_start_0
    iget-object v10, p0, Landroid/media/RingtoneEx;->mSmartRingtone:Lcom/lge/media/SmartRingtone;

    if-eqz v10, :cond_2

    const-string v10, "RingtoneEx"

    const-string v11, "setStreamType: mSmartRingtone.onNoiseEstimation()"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Landroid/media/RingtoneEx;->mSmartRingtone:Lcom/lge/media/SmartRingtone;

    invoke-virtual {v10}, Lcom/lge/media/SmartRingtone;->onNoiseEstimation()V

    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/media/RingtoneEx;->mIsSmartRingtoneOnNoiseEstimation:Z

    iget-object v10, p0, Landroid/media/RingtoneEx;->mSmartRingtone:Lcom/lge/media/SmartRingtone;

    iget-object v11, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v10, v11}, Lcom/lge/media/SmartRingtone;->setMediaPlayer(Landroid/media/MediaPlayer;)V

    :cond_2
    sget-boolean v10, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Landroid/media/RingtoneEx;->mContext:Landroid/content/Context;

    iget-object v11, p0, Landroid/media/RingtoneEx;->mUri:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/lgdrm/DrmFwExt;->getActualRingtoneUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v10, p0, Landroid/media/RingtoneEx;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v10, v4, v11, v12, v13}, Lcom/lge/lgdrm/DrmFwExt;->checkDRMRingtone(Landroid/content/Context;Ljava/lang/String;ZZZ)I

    move-result v3

    :cond_3
    const/4 v10, 0x1

    if-ne v3, v10, :cond_6

    iget-object v10, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Landroid/media/RingtoneEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    :goto_1
    iget-object v10, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget v11, p0, Landroid/media/RingtoneEx;->mStreamType:I

    invoke-virtual {v10, v11}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    const-string v10, "DCM"

    const-string v11, "ro.build.target_operator"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v10

    if-eqz v10, :cond_c

    :try_start_1
    const-string v10, "RingtoneEx"

    const-string v11, "[hy] mLocalPlayer.prepare();"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v10}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_4
    :goto_2
    if-eqz v9, :cond_5

    const-string v10, "RingtoneEx"

    const-string v11, "Set default ringtone!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    new-instance v10, Landroid/media/MediaPlayer;

    invoke-direct {v10}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v10, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v10, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Landroid/media/RingtoneEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v10, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget v11, p0, Landroid/media/RingtoneEx;->mStreamType:I

    invoke-virtual {v10, v11}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v10, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v10}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_5
    :goto_3
    iget-object v10, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v10, :cond_d

    const-string v10, "RingtoneEx"

    const-string v11, "Successfully created local player"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const/4 v10, 0x2

    if-ne v3, v10, :cond_7

    :try_start_3
    iget-object v10, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v10, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iput-object v4, p0, Landroid/media/RingtoneEx;->mDrmPath:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Landroid/media/RingtoneEx;->destroyLocalPlayer()V

    iget-boolean v10, p0, Landroid/media/RingtoneEx;->mAllowRemote:Z

    if-nez v10, :cond_4

    const-string v10, "RingtoneEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Remote playback not allowed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    goto :goto_2

    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_7
    :try_start_4
    const-string v10, "RingtoneEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ringtone uri :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/media/RingtoneEx;->mUri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  path :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Landroid/media/RingtoneEx;->mUri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .local v0, "authority":Ljava/lang/String;
    invoke-static {p1}, Lcom/lge/media/RingtoneManagerEx;->getDefaultType(Landroid/net/Uri;)I

    move-result v5

    .local v5, "ringToneType":I
    iget-object v10, p0, Landroid/media/RingtoneEx;->mContext:Landroid/content/Context;

    invoke-static {v10, v5}, Lcom/lge/media/RingtoneManagerEx;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .local v7, "ringtoneUri":Landroid/net/Uri;
    const-string v10, "settings"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    if-nez v7, :cond_8

    new-instance v10, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v10}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    .end local v0    # "authority":Ljava/lang/String;
    .end local v5    # "ringToneType":I
    .end local v7    # "ringtoneUri":Landroid/net/Uri;
    :catch_1
    move-exception v2

    .local v2, "ex":Ljava/io/IOException;
    :try_start_5
    const-string v10, "RingtoneEx"

    const-string v11, "Problem setDataSource; try to play default ringtone"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Landroid/media/RingtoneEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .end local v2    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Landroid/media/RingtoneEx;->destroyLocalPlayer()V

    iget-boolean v10, p0, Landroid/media/RingtoneEx;->mAllowRemote:Z

    if-nez v10, :cond_4

    const-string v10, "RingtoneEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Remote playback not allowed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    goto/16 :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "authority":Ljava/lang/String;
    .restart local v5    # "ringToneType":I
    .restart local v7    # "ringtoneUri":Landroid/net/Uri;
    :cond_8
    if-eqz v4, :cond_9

    :try_start_6
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v6, "ringtoneFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "RingtoneEx"

    const-string v11, "File not exists, Change path to null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .end local v6    # "ringtoneFile":Ljava/io/File;
    :cond_9
    if-nez v4, :cond_b

    iget-object v10, p0, Landroid/media/RingtoneEx;->mUri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .local v8, "scheme":Ljava/lang/String;
    if-eqz v8, :cond_a

    const-string v10, "android.resource"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v11, p0, Landroid/media/RingtoneEx;->mContext:Landroid/content/Context;

    iget-object v12, p0, Landroid/media/RingtoneEx;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11, v12}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    .end local v0    # "authority":Ljava/lang/String;
    .end local v5    # "ringToneType":I
    .end local v7    # "ringtoneUri":Landroid/net/Uri;
    .end local v8    # "scheme":Ljava/lang/String;
    :catch_3
    move-exception v1

    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/media/RingtoneEx;->destroyLocalPlayer()V

    iget-boolean v10, p0, Landroid/media/RingtoneEx;->mAllowRemote:Z

    if-nez v10, :cond_4

    const-string v10, "RingtoneEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Remote playback not allowed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v0    # "authority":Ljava/lang/String;
    .restart local v5    # "ringToneType":I
    .restart local v7    # "ringtoneUri":Landroid/net/Uri;
    .restart local v8    # "scheme":Ljava/lang/String;
    :cond_a
    :try_start_7
    iget-object v10, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Landroid/media/RingtoneEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v8    # "scheme":Ljava/lang/String;
    :cond_b
    iget-object v10, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v11, p0, Landroid/media/RingtoneEx;->mContext:Landroid/content/Context;

    iget-object v12, p0, Landroid/media/RingtoneEx;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11, v12}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    .end local v0    # "authority":Ljava/lang/String;
    .end local v5    # "ringToneType":I
    .end local v7    # "ringtoneUri":Landroid/net/Uri;
    :catch_4
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    :try_start_8
    const-string v10, "RingtoneEx"

    const-string v11, "[run][hy] exception is occurred. mLocalPlayer.prepare() Error: Try to play a default Ringtone!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v10}, Landroid/media/MediaPlayer;->release()V

    const/4 v10, 0x0

    iput-object v10, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    new-instance v10, Landroid/media/MediaPlayer;

    invoke-direct {v10}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v10, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v10, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Landroid/media/RingtoneEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v10, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget v11, p0, Landroid/media/RingtoneEx;->mStreamType:I

    invoke-virtual {v10, v11}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v10, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v10}, Landroid/media/MediaPlayer;->prepare()V

    goto/16 :goto_2

    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_c
    iget-object v10, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v10}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_2

    :catch_5
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    const-string v10, "RingtoneEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setDefault Ringtone is errer:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    :cond_d
    const-string v10, "RingtoneEx"

    const-string v11, "Problem opening; delegating to remote player"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setVolume(F)V
    .locals 2
    .param p1, "volume"    # F

    .prologue
    iget-object v0, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/media/RingtoneEx;->mAllowRemote:Z

    if-eqz v0, :cond_1

    const-string v0, "RingtoneEx"

    const-string v1, "setVolume is only supported by local playback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "RingtoneEx"

    const-string v1, "Neither local nor remote playback available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/media/RingtoneEx;->mDrmPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RingtoneEx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/RingtoneEx;->mDrmPath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v2}, Lcom/lge/lgdrm/DrmFwExt;->checkDRMRingtone(Landroid/content/Context;Ljava/lang/String;ZZZ)I

    :cond_0
    iget-object v0, p0, Landroid/media/RingtoneEx;->mSmartRingtone:Lcom/lge/media/SmartRingtone;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/media/RingtoneEx;->mIsSmartRingtoneOnNoiseEstimation:Z

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Landroid/media/RingtoneEx;->mSmartRingtone:Lcom/lge/media/SmartRingtone;

    invoke-virtual {v0}, Lcom/lge/media/SmartRingtone;->restoreVolumeAfterStop()V

    iput-boolean v2, p0, Landroid/media/RingtoneEx;->mIsSmartRingtoneOnNoiseEstimation:Z

    :cond_1
    invoke-super {p0}, Landroid/media/Ringtone;->stop()V

    return-void
.end method
