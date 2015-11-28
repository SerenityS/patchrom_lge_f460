.class public Lcom/android/internal/telephony/IMSPhone;
.super Lcom/android/internal/telephony/IIMSPhone$Stub;
.source "IMSPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IMSPhone$1;,
        Lcom/android/internal/telephony/IMSPhone$MyHandler;
    }
.end annotation


# static fields
.field private static final BAL_ITEM_RADIO_IMS_CALL_STATE:I = 0xb

.field private static final BAL_ITEM_RADIO_SIP_REG_SENDING:I = 0xa

.field private static final BAL_ITEM_RADIO_VOLTE_NV_ITEMS:I = 0xc

.field private static DEBUG_LOG:Z = false

.field private static final OPERATOR:Ljava/lang/String;

.field private static final OPERATOR_ATT:Ljava/lang/String; = "ATT"

.field private static final OPERATOR_KDDI:Ljava/lang/String; = "KDDI"

.field private static final OPERATOR_KT:Ljava/lang/String; = "KT"

.field private static final OPERATOR_LGU:Ljava/lang/String; = "LGU"

.field private static final OPERATOR_SKT:Ljava/lang/String; = "SKT"

.field private static final OPERATOR_TMUS:Ljava/lang/String; = "TMO"

.field private static final OPERATOR_VZW:Ljava/lang/String; = "VZW"

.field private static final PHONE_STATE_1X_REGISTRATION:I = 0x2

.field private static final PHONE_STATE_CDMA_LOCK_INFO:I = 0x1

.field private static final PHONE_STATE_ICC_EF_READ_DONE:I = 0x3

.field private static final RIL_ICC_EF_LINEAR_FIXED_READ_DONE:I = 0x65

.field private static final RIL_ICC_EF_TRANSPARENT_READ_DONE:I = 0x66

.field private static final RIL_IMS_STAUS_SET_DONE_FOR_DAN:I = 0x67

.field private static final RIL_RESPONSE:I = 0x64

.field private static final SYS_INFO_ACCESS_NETWORK_INFO:I = 0x3

.field private static final SYS_INFO_APN:I = 0x9

.field private static final SYS_INFO_CLOSE_DATA_CONNECTION:I = 0x5

.field private static final SYS_INFO_CS_CALL_PROTECTION:I = 0x6

.field private static final SYS_INFO_ICC_EF_READ:I = 0x7

.field private static final SYS_INFO_IMS_REGISTRATION_STATE:I = 0x4

.field private static final SYS_INFO_IMS_REG_STATUS_FOR_DAN:I = 0xb

.field private static final SYS_INFO_LTE_NETWORK_FEATURE:I = 0x8

.field private static final SYS_INFO_MODEM_INFO:I = 0x1

.field private static final SYS_INFO_PCSCF_ADDRESS:I = 0x2

.field private static final SYS_INFO_SRVCC_CALL_INFO:I = 0xa

.field private static final SYS_INFO_SRVCC_CNAP_INFO:I = 0xc

.field private static final SYS_INFO_SRVCC_PARTYTYPE_INFO:I = 0x11

.field private static final TAG:Ljava/lang/String; = "LGIMS"

.field private static mContext:Landroid/content/Context;

.field private static mIMSPhone:Lcom/android/internal/telephony/IMSPhone;

.field private static mSysMonitor:Lcom/android/internal/telephony/ISysMonitor;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CommandsInterface;

.field private mCNAPInfo:Ljava/lang/String;

.field private mConnectedNumber:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "ro.build.target_operator"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    sput-object v2, Lcom/android/internal/telephony/IMSPhone;->mIMSPhone:Lcom/android/internal/telephony/IMSPhone;

    sput-object v2, Lcom/android/internal/telephony/IMSPhone;->mContext:Landroid/content/Context;

    sput-object v2, Lcom/android/internal/telephony/IMSPhone;->mSysMonitor:Lcom/android/internal/telephony/ISysMonitor;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/IIMSPhone$Stub;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    iput-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mConnectedNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mCNAPInfo:Ljava/lang/String;

    const-string v0, "user"

    const-string v1, "ro.build.type"

    const-string v2, "userdebug"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "LGIMS"

    const-string v1, "IMSPhone is created..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    return v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/IMSPhone;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/telephony/IMSPhone;->mIMSPhone:Lcom/android/internal/telephony/IMSPhone;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/IMSPhone;

    invoke-direct {v0}, Lcom/android/internal/telephony/IMSPhone;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/IMSPhone;->mIMSPhone:Lcom/android/internal/telephony/IMSPhone;

    const-string v0, "com.lge.ims.phone"

    sget-object v1, Lcom/android/internal/telephony/IMSPhone;->mIMSPhone:Lcom/android/internal/telephony/IMSPhone;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-boolean v0, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "LGIMS"

    const-string v1, "IMS phone sevice is Added to service manager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IMSPhone;->mIMSPhone:Lcom/android/internal/telephony/IMSPhone;

    return-object v0
.end method

.method public static getSysMonitor()Lcom/android/internal/telephony/ISysMonitor;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/telephony/IMSPhone;->mSysMonitor:Lcom/android/internal/telephony/ISysMonitor;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "LGIMS"

    const-string v1, "ISysMonitor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IMSPhone;->mSysMonitor:Lcom/android/internal/telephony/ISysMonitor;

    return-object v0
.end method

.method public static isPhoneRequired(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v4, "LGU"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v3, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_3

    const-string v3, "com.lge.ims.imsphone"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private setBalItem(II)V
    .locals 4
    .param p1, "item"    # I
    .param p2, "data"    # I

    .prologue
    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "LGIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBalItem :: item ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), data ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_1

    const-string v1, "LGIMS"

    const-string v2, "mHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_1

    const-string v1, "LGIMS"

    const-string v2, "mCM is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    .local v0, "index":I
    sget-object v1, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v2, "LGU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    packed-switch p1, :pswitch_data_0

    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_4

    const-string v1, "LGIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown item ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, p2, v2}, Lcom/android/internal/telephony/Phone;->setModemIntegerItem(IILandroid/os/Message;)V

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x7

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    packed-switch p1, :pswitch_data_1

    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_4

    const-string v1, "LGIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown item ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    const v0, 0x6002d

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v2, "KT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    packed-switch p1, :pswitch_data_2

    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_4

    const-string v1, "LGIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown item ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_2
    const v0, 0x6002d

    goto :goto_1

    :cond_7
    sget-object v1, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v2, "ATT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_8
    packed-switch p1, :pswitch_data_3

    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_4

    const-string v1, "LGIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown item ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_3
    const v0, 0x6002d

    goto/16 :goto_1

    :pswitch_4
    const/16 v0, 0x1e

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xb
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getCNAPInfo()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mCNAPInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectedNumber()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mConnectedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getImsCallInfo()Lcom/android/internal/telephony/ImsCallInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    return-object v0
.end method

.method public getSysInfo(IILjava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p1, "item"    # I
    .param p2, "param"    # I
    .param p3, "paramEx"    # Ljava/lang/String;

    .prologue
    const v5, 0xffff

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-boolean v3, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "LGIMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown item ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v2

    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    if-ne p2, v3, :cond_3

    if-eqz p3, :cond_1

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v4, "INET"

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v4, "INET"

    invoke-interface {v3, v4, p3}, Lcom/android/internal/telephony/Phone;->getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v3, 0x6

    if-ne p2, v3, :cond_6

    if-eqz p3, :cond_4

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v4, "INET6"

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v4, "INET6"

    invoke-interface {v3, v4, p3}, Lcom/android/internal/telephony/Phone;->getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/Phone;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_0

    const/16 v3, 0xd

    if-ne p2, v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getLteInfo()[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_7
    const/16 v3, 0xe

    if-ne p2, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCdmaInfo()[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    new-array v2, v4, [Ljava/lang/String;

    .local v2, "result":[Ljava/lang/String;
    const-string v3, "FAILURE"

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    if-eqz p3, :cond_8

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    const-string p3, "linear_fixed"

    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    .local v0, "iccCP":Lcom/android/internal/telephony/uicc/IccCardProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .local v1, "iccFH":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v1, :cond_0

    const-string v3, "linear_fixed"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    and-int v3, p2, v5

    iget-object v4, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    const-string v3, "SUCCESS"

    aput-object v3, v2, v7

    goto/16 :goto_0

    :cond_a
    const-string v3, "transparent"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    and-int v3, p2, v5

    iget-object v4, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    const-string v3, "SUCCESS"

    aput-object v3, v2, v7

    goto/16 :goto_0

    .end local v0    # "iccCP":Lcom/android/internal/telephony/uicc/IccCardProxy;
    .end local v1    # "iccFH":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v2    # "result":[Ljava/lang/String;
    :pswitch_4
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    .restart local v2    # "result":[Ljava/lang/String;
    if-ne p2, v4, :cond_d

    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->isEmergencyCallSupportedOnLte()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    :cond_b
    :goto_1
    if-eqz v2, :cond_0

    sget-boolean v3, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "LGIMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LTE network feature :: param("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), result("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    goto :goto_1

    :cond_d
    const/4 v3, 0x2

    if-ne p2, v3, :cond_b

    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->isVoiceCallSupprotedOnLte()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    goto :goto_1

    :cond_e
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    goto :goto_1

    .end local v2    # "result":[Ljava/lang/String;
    :pswitch_5
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_0

    new-array v2, v4, [Ljava/lang/String;

    .restart local v2    # "result":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public handleRemoteException()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/IMSPhone;->mSysMonitor:Lcom/android/internal/telephony/ISysMonitor;

    sget-object v0, Lcom/android/internal/telephony/IMSPhone;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.ims.action.IMS_PHONE_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v0, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "LGIMS"

    const-string v1, "handling remote exception"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setDefaultPhone(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "cm"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "LGIMS"

    const-string v2, "setDefaultPhone is called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_3

    :cond_1
    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_2

    const-string v1, "LGIMS"

    const-string v2, "context or phone or cm is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    sput-object p1, Lcom/android/internal/telephony/IMSPhone;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/telephony/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p2, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_4

    new-instance v1, Lcom/android/internal/telephony/IMSPhone$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/IMSPhone$MyHandler;-><init>(Lcom/android/internal/telephony/IMSPhone;Lcom/android/internal/telephony/IMSPhone$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_5

    const-string v1, "com.lge.ims.srvcc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    if-nez v1, :cond_5

    const-string v1, "LGIMS"

    const-string v2, "SRVCC feature enabled..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/internal/telephony/ImsCallInfoImpl;

    invoke-direct {v1}, Lcom/android/internal/telephony/ImsCallInfoImpl;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    :cond_5
    sget-object v1, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v2, "ATT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/IMSPhone;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lge.ims.action.IMS_PHONE_STARTED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    sget-object v1, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v2, "KT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v2, "LGU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_8
    sget-object v1, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v2, "KDDI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1
.end method

.method public setListener(Lcom/android/internal/telephony/ISysMonitor;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/internal/telephony/ISysMonitor;

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "LGIMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListener listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput-object p1, Lcom/android/internal/telephony/IMSPhone;->mSysMonitor:Lcom/android/internal/telephony/ISysMonitor;

    return-void
.end method

.method public setSysInfo(IIILjava/lang/String;)V
    .locals 4
    .param p1, "item"    # I
    .param p2, "param1"    # I
    .param p3, "param2"    # I
    .param p4, "paramEx"    # Ljava/lang/String;

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "LGIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown item ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/IMSPhone;->setBalItem(II)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_1

    const-string v1, "LGIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REG STATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-lez p2, :cond_2

    const/4 v0, 0x1

    .local v0, "regState":Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setIMSRegistate(Z)V

    goto :goto_0

    .end local v0    # "regState":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_0

    goto :goto_0

    :pswitch_5
    iput-object p4, p0, Lcom/android/internal/telephony/IMSPhone;->mConnectedNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    invoke-virtual {v1, p4}, Lcom/android/internal/telephony/ImsCallInfoImpl;->setConnectedNumber(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/ImsCallInfoImpl;->setConnectedNumberPresentation(I)V

    goto :goto_0

    :pswitch_6
    iput-object p4, p0, Lcom/android/internal/telephony/IMSPhone;->mCNAPInfo:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    invoke-virtual {v1, p4}, Lcom/android/internal/telephony/ImsCallInfoImpl;->setConnectedName(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/ImsCallInfoImpl;->setPartyType(I)V

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_3

    const-string v1, "LGIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMS REG is DONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Lcom/android/internal/telephony/Phone;->setImsStatusForDan(ILandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
