.class public Lcom/android/internal/telephony/dataconnection/DcTrackerBase$ThreadLGDataRecovery;
.super Ljava/lang/Thread;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThreadLGDataRecovery"
.end annotation


# instance fields
.field mLoop:Landroid/os/Looper;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mSUPPORT_LG_DATA_RECOVERY:Z

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 3970
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$ThreadLGDataRecovery;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3965
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$ThreadLGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 3971
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$ThreadLGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 3972
    const-string v0, "persist.telephony.datarecovery"

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$ThreadLGDataRecovery;->mSUPPORT_LG_DATA_RECOVERY:Z

    .line 3974
    return-void
.end method


# virtual methods
.method public loopQuit()V
    .locals 1

    .prologue
    .line 3988
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$ThreadLGDataRecovery;->mLoop:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 3989
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 3978
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3979
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$ThreadLGDataRecovery;->mLoop:Landroid/os/Looper;

    .line 3980
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$ThreadLGDataRecovery;->mSUPPORT_LG_DATA_RECOVERY:Z

    if-eqz v0, :cond_0

    .line 3981
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$ThreadLGDataRecovery;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$ThreadLGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mLgDataRecovery:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    .line 3983
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 3984
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$ThreadLGDataRecovery;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mLgDataRecovery:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->dispose()V

    .line 3985
    return-void
.end method
