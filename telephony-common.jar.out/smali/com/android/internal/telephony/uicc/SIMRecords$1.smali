.class Lcom/android/internal/telephony/uicc/SIMRecords$1;
.super Ljava/lang/Object;
.source "SIMRecords.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;->handleUSimSmses(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

.field final synthetic val$simSmsMessage:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1577
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->val$simSmsMessage:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->val$simSmsMessage:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->updateCurrentIccUSimMessageProvider(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1580
    const-string v0, "handleUSimSmses(), the SMS DB insertion from USIM is failed"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1582
    :cond_0
    return-void
.end method
