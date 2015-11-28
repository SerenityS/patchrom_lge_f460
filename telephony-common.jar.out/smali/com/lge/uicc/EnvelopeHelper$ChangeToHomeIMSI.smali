.class Lcom/lge/uicc/EnvelopeHelper$ChangeToHomeIMSI;
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
    name = "ChangeToHomeIMSI"
.end annotation


# static fields
.field private static final envData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 142
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/uicc/EnvelopeHelper$ChangeToHomeIMSI;->envData:[B

    .line 160
    sget-object v0, Lcom/lge/uicc/EnvelopeHelper$ChangeToHomeIMSI;->envData:[B

    const/4 v1, 0x1

    sget-object v2, Lcom/lge/uicc/EnvelopeHelper$ChangeToHomeIMSI;->envData:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 161
    return-void

    .line 142
    nop

    :array_0
    .array-data 1
        -0x2at
        0x0t
        0x19t
        0x1t
        0x30t
        0x2t
        0x2t
        -0x7et
        -0x7ft
        0x70t
        0x3t
        0x54t
        -0x10t
        0x60t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/uicc/EnvelopeHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/uicc/EnvelopeHelper$1;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/lge/uicc/EnvelopeHelper$ChangeToHomeIMSI;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 163
    const-string v1, "lgu.imsi_type"

    const-string v2, "XXXX"

    invoke-static {v1, v2}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    const-string v1, "must be state of Spon IMSI"

    # invokes: Lcom/lge/uicc/EnvelopeHelper;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/uicc/EnvelopeHelper;->access$400(Ljava/lang/String;)V

    .line 165
    const-string v1, "FAIL"

    .line 174
    :goto_0
    return-object v1

    .line 167
    :cond_0
    invoke-static {v3}, Lcom/lge/uicc/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v0

    .line 168
    .local v0, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v0, :cond_1

    .line 169
    const-string v1, "fails to get CommandsInterface"

    # invokes: Lcom/lge/uicc/EnvelopeHelper;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/uicc/EnvelopeHelper;->access$400(Ljava/lang/String;)V

    .line 170
    const-string v1, "FAIL"

    goto :goto_0

    .line 172
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChangeToHomeIMSI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/uicc/EnvelopeHelper$ChangeToHomeIMSI;->envData:[B

    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/lge/uicc/EnvelopeHelper;->logp(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/uicc/EnvelopeHelper;->access$500(Ljava/lang/String;)V

    .line 173
    sget-object v1, Lcom/lge/uicc/EnvelopeHelper$ChangeToHomeIMSI;->envData:[B

    invoke-static {v1}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 174
    const-string v1, "SENT"

    goto :goto_0
.end method
