.class Lcom/lge/uicc/EnvelopeHelper$StartOTA;
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
    name = "StartOTA"
.end annotation


# static fields
.field private static final envData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/16 v0, 0x36

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/uicc/EnvelopeHelper$StartOTA;->envData:[B

    .line 81
    sget-object v0, Lcom/lge/uicc/EnvelopeHelper$StartOTA;->envData:[B

    const/4 v1, 0x1

    sget-object v2, Lcom/lge/uicc/EnvelopeHelper$StartOTA;->envData:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 82
    return-void

    .line 54
    nop

    :array_0
    .array-data 1
        -0x2ft
        0x0t
        0x2t
        0x2t
        -0x7dt
        -0x7ft
        0x6t
        0x6t
        -0x68t
        0x33t
        0x11t
        0x11t
        0x11t
        0x11t
        0xbt
        0x26t
        -0x1ct
        0xat
        -0x68t
        0x33t
        0x11t
        0x11t
        0x11t
        0x11t
        0x7ft
        0x16t
        0xct
        0x1t
        0x9t
        0x15t
        0x57t
        0x32t
        0x36t
        0x14t
        0x2t
        0x70t
        0x0t
        0x0t
        0xft
        0xdt
        0x0t
        0x1t
        0x20t
        0x20t
        -0x50t
        0x0t
        0x6t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/uicc/EnvelopeHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/uicc/EnvelopeHelper$1;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/lge/uicc/EnvelopeHelper$StartOTA;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 84
    const-string v2, "card_operator"

    invoke-static {v2}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LGU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    const-string v2, "It\'s not a LGU+ Card"

    # invokes: Lcom/lge/uicc/EnvelopeHelper;->loge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/lge/uicc/EnvelopeHelper;->access$400(Ljava/lang/String;)V

    .line 86
    const-string v2, "FAIL"

    .line 103
    :goto_0
    return-object v2

    .line 88
    :cond_0
    const-string v2, "card_provisioned"

    invoke-static {v2}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "provisioned":Ljava/lang/String;
    const-string v2, "no"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    sget-object v2, Lcom/lge/uicc/EnvelopeHelper$StartOTA;->envData:[B

    sget-object v3, Lcom/lge/uicc/EnvelopeHelper$StartOTA;->envData:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    .line 98
    :goto_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/lge/uicc/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v1

    .line 99
    .local v1, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v1, :cond_3

    .line 100
    const-string v2, "FAIL"

    goto :goto_0

    .line 91
    .end local v1    # "ril":Lcom/android/internal/telephony/RIL;
    :cond_1
    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    sget-object v2, Lcom/lge/uicc/EnvelopeHelper$StartOTA;->envData:[B

    sget-object v3, Lcom/lge/uicc/EnvelopeHelper$StartOTA;->envData:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x5

    aput-byte v4, v2, v3

    goto :goto_1

    .line 94
    :cond_2
    const-string v2, "can not decide whether this card was provisioned."

    # invokes: Lcom/lge/uicc/EnvelopeHelper;->loge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/lge/uicc/EnvelopeHelper;->access$400(Ljava/lang/String;)V

    .line 95
    const-string v2, "FAIL"

    goto :goto_0

    .line 102
    .restart local v1    # "ril":Lcom/android/internal/telephony/RIL;
    :cond_3
    sget-object v2, Lcom/lge/uicc/EnvelopeHelper$StartOTA;->envData:[B

    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/RIL;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 103
    const-string v2, "SENT"

    goto :goto_0
.end method
