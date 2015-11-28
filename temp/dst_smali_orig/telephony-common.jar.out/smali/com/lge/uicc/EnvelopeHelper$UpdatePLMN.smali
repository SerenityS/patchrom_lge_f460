.class Lcom/lge/uicc/EnvelopeHelper$UpdatePLMN;
.super Ljava/lang/Object;
.source "EnvelopeHelper.java"

# interfaces
.implements Lcom/lge/uicc/EnvelopeHelper$EnvelopeOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/EnvelopeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdatePLMN"
.end annotation


# static fields
.field private static final envData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/uicc/EnvelopeHelper$UpdatePLMN;->envData:[B

    sget-object v0, Lcom/lge/uicc/EnvelopeHelper$UpdatePLMN;->envData:[B

    const/4 v1, 0x1

    sget-object v2, Lcom/lge/uicc/EnvelopeHelper$UpdatePLMN;->envData:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void

    nop

    :array_0
    .array-data 1
        -0x2at
        0x0t
        0x19t
        0x1t
        0x2ft
        0x2t
        0x2t
        -0x7et
        -0x7ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/uicc/EnvelopeHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/uicc/EnvelopeHelper$1;

    .prologue
    invoke-direct {p0}, Lcom/lge/uicc/EnvelopeHelper$UpdatePLMN;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const-string v1, "lgu.imsi_type"

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HOME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "must be state of Home IMSI"

    # invokes: Lcom/lge/uicc/EnvelopeHelper;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/uicc/EnvelopeHelper;->access$400(Ljava/lang/String;)V

    const-string v1, "FAIL"

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/lge/uicc/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v0

    .local v0, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v0, :cond_1

    const-string v1, "fails to get CommandsInterface"

    # invokes: Lcom/lge/uicc/EnvelopeHelper;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/uicc/EnvelopeHelper;->access$400(Ljava/lang/String;)V

    const-string v1, "FAIL"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdatePLMN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/uicc/EnvelopeHelper$UpdatePLMN;->envData:[B

    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/lge/uicc/EnvelopeHelper;->logp(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/uicc/EnvelopeHelper;->access$500(Ljava/lang/String;)V

    sget-object v1, Lcom/lge/uicc/EnvelopeHelper$UpdatePLMN;->envData:[B

    invoke-static {v1}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    const-string v1, "SENT"

    goto :goto_0
.end method
