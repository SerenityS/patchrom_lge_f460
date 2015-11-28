.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BEST:I = 0x6

.field public static final NUM_SIGNAL_STRENGTH_BINS:I

.field public static final SIGNAL_STRENGTH_AWESOME:I = 0x5

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field private static lastEcIoIndex:I

.field private static lastEcIoValues:[I

.field private static mLGRssiData:Lcom/lge/telephony/LGRssiData;


# instance fields
.field private LGE_GSM_ASU_VALUE:[I

.field private LGE_LTE_RSRP_VALUE:[I

.field private LGE_UMTS_ASU_VALUE:[I

.field private datafeature:I

.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mRadioTechnology:I

.field private mTdScdmaRscp:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 73
    invoke-static {}, Landroid/telephony/SignalStrength;->getNumSignalStrength()I

    move-result v0

    sput v0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    .line 75
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "none"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "poor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "moderate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "good"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "great"

    aput-object v2, v0, v1

    const-string v1, "awesome"

    aput-object v1, v0, v4

    const/4 v1, 0x6

    const-string v2, "best"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 116
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    .line 118
    sput v3, Landroid/telephony/SignalStrength;->lastEcIoIndex:I

    .line 439
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 116
    :array_0
    .array-data 4
        0x5
        0x5
        0x5
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x63

    const/4 v4, 0x5

    const/4 v3, 0x0

    const v2, 0x7fffffff

    const/4 v1, -0x1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput v3, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 108
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_LTE_RSRP_VALUE:[I

    .line 109
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_GSM_ASU_VALUE:[I

    .line 110
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_UMTS_ASU_VALUE:[I

    .line 145
    iput v5, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 146
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 147
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 148
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 149
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 150
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 151
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 152
    iput v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 153
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 154
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 155
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 156
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 157
    iput v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 160
    iput v3, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 163
    iput v3, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 165
    return-void

    .line 108
    :array_0
    .array-data 4
        -0x54
        -0x5e
        -0x68
        -0x72
        -0x7f
    .end array-data

    .line 109
    :array_1
    .array-data 4
        0xc
        0x9
        0x8
        0x6
        0x5
    .end array-data

    .line 110
    :array_2
    .array-data 4
        0xd
        0xa
        0x7
        0x5
        0x2
    .end array-data
.end method

.method public constructor <init>(IIIIIIIIIIIIIZ)V
    .locals 15
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "gsmFlag"    # Z

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v1, 0x0

    iput v1, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 108
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Landroid/telephony/SignalStrength;->LGE_LTE_RSRP_VALUE:[I

    .line 109
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Landroid/telephony/SignalStrength;->LGE_GSM_ASU_VALUE:[I

    .line 110
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Landroid/telephony/SignalStrength;->LGE_UMTS_ASU_VALUE:[I

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p14

    .line 220
    invoke-virtual/range {v1 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 223
    move/from16 v0, p13

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 224
    return-void

    .line 108
    nop

    :array_0
    .array-data 4
        -0x54
        -0x5e
        -0x68
        -0x72
        -0x7f
    .end array-data

    .line 109
    :array_1
    .array-data 4
        0xc
        0x9
        0x8
        0x6
        0x5
    .end array-data

    .line 110
    :array_2
    .array-data 4
        0xd
        0xa
        0x7
        0x5
        0x2
    .end array-data
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 2
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z

    .prologue
    const/4 v1, 0x5

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 108
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_LTE_RSRP_VALUE:[I

    .line 109
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_GSM_ASU_VALUE:[I

    .line 110
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_UMTS_ASU_VALUE:[I

    .line 205
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 208
    return-void

    .line 108
    :array_0
    .array-data 4
        -0x54
        -0x5e
        -0x68
        -0x72
        -0x7f
    .end array-data

    .line 109
    :array_1
    .array-data 4
        0xc
        0x9
        0x8
        0x6
        0x5
    .end array-data

    .line 110
    :array_2
    .array-data 4
        0xd
        0xa
        0x7
        0x5
        0x2
    .end array-data
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsmFlag"    # Z

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 108
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_LTE_RSRP_VALUE:[I

    .line 109
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_GSM_ASU_VALUE:[I

    .line 110
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_UMTS_ASU_VALUE:[I

    .line 235
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 238
    return-void

    .line 108
    :array_0
    .array-data 4
        -0x54
        -0x5e
        -0x68
        -0x72
        -0x7f
    .end array-data

    .line 109
    :array_1
    .array-data 4
        0xc
        0x9
        0x8
        0x6
        0x5
    .end array-data

    .line 110
    :array_2
    .array-data 4
        0xd
        0xa
        0x7
        0x5
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x5

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 108
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Landroid/telephony/SignalStrength;->LGE_LTE_RSRP_VALUE:[I

    .line 109
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Landroid/telephony/SignalStrength;->LGE_GSM_ASU_VALUE:[I

    .line 110
    new-array v1, v2, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Landroid/telephony/SignalStrength;->LGE_UMTS_ASU_VALUE:[I

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 369
    return-void

    .line 108
    :array_0
    .array-data 4
        -0x54
        -0x5e
        -0x68
        -0x72
        -0x7f
    .end array-data

    .line 109
    :array_1
    .array-data 4
        0xc
        0x9
        0x8
        0x6
        0x5
    .end array-data

    .line 110
    :array_2
    .array-data 4
        0xd
        0xa
        0x7
        0x5
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v1, 0x5

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 108
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_LTE_RSRP_VALUE:[I

    .line 109
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_GSM_ASU_VALUE:[I

    .line 110
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_UMTS_ASU_VALUE:[I

    .line 248
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 249
    return-void

    .line 108
    :array_0
    .array-data 4
        -0x54
        -0x5e
        -0x68
        -0x72
        -0x7f
    .end array-data

    .line 109
    :array_1
    .array-data 4
        0xc
        0x9
        0x8
        0x6
        0x5
    .end array-data

    .line 110
    :array_2
    .array-data 4
        0xd
        0xa
        0x7
        0x5
        0x2
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 6
    .param p1, "gsmFlag"    # Z

    .prologue
    const/16 v5, 0x63

    const/4 v4, 0x0

    const/4 v3, 0x5

    const v2, 0x7fffffff

    const/4 v1, -0x1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput v4, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 108
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_LTE_RSRP_VALUE:[I

    .line 109
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_GSM_ASU_VALUE:[I

    .line 110
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_UMTS_ASU_VALUE:[I

    .line 176
    iput v5, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 177
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 178
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 179
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 180
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 181
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 182
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 183
    iput v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 184
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 185
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 186
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 187
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 188
    iput v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 189
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 191
    iput v4, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 193
    return-void

    .line 108
    nop

    :array_0
    .array-data 4
        -0x54
        -0x5e
        -0x68
        -0x72
        -0x7f
    .end array-data

    .line 109
    :array_1
    .array-data 4
        0xc
        0x9
        0x8
        0x6
        0x5
    .end array-data

    .line 110
    :array_2
    .array-data 4
        0xd
        0xa
        0x7
        0x5
        0x2
    .end array-data
.end method

.method private getGsmUmtsLevelATT()I
    .locals 5

    .prologue
    .line 1686
    const/4 v2, 0x0

    .line 1688
    .local v2, "level":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 1689
    .local v1, "asu_dBm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v0

    .line 1690
    .local v0, "asu_Ecio":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getRadioTechnology()I

    move-result v3

    .line 1692
    .local v3, "mDataNetType":I
    packed-switch v3, :pswitch_data_0

    .line 1709
    :pswitch_0
    const v4, -0x37849

    if-ne v0, v4, :cond_0

    .line 1711
    invoke-direct {p0, v1}, Landroid/telephony/SignalStrength;->getRSSIindexGsm(I)I

    move-result v2

    .line 1721
    :goto_0
    return v2

    .line 1696
    :pswitch_1
    invoke-direct {p0, v1}, Landroid/telephony/SignalStrength;->getRSSIindexGsm(I)I

    move-result v2

    .line 1697
    goto :goto_0

    .line 1704
    :pswitch_2
    invoke-direct {p0, v1, v0}, Landroid/telephony/SignalStrength;->getRSSIindexUmts(II)I

    move-result v2

    .line 1705
    goto :goto_0

    .line 1713
    :cond_0
    invoke-direct {p0, v1, v0}, Landroid/telephony/SignalStrength;->getRSSIindexUmts(II)I

    move-result v2

    goto :goto_0

    .line 1692
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getGsmUmtsLevelTMO()I
    .locals 5

    .prologue
    .line 1778
    const/4 v2, 0x0

    .line 1780
    .local v2, "level":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 1781
    .local v1, "asu_dBm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v0

    .line 1782
    .local v0, "asu_Ecio":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getRadioTechnology()I

    move-result v3

    .line 1784
    .local v3, "mDataNetType":I
    packed-switch v3, :pswitch_data_0

    .line 1801
    :pswitch_0
    const v4, -0x37849

    if-ne v0, v4, :cond_0

    .line 1803
    invoke-direct {p0, v1}, Landroid/telephony/SignalStrength;->getRSSIindexGsm(I)I

    move-result v2

    .line 1813
    :goto_0
    return v2

    .line 1788
    :pswitch_1
    invoke-direct {p0, v1}, Landroid/telephony/SignalStrength;->getRSSIindexGsm(I)I

    move-result v2

    .line 1789
    goto :goto_0

    .line 1796
    :pswitch_2
    invoke-direct {p0, v1, v0}, Landroid/telephony/SignalStrength;->getRSSIindexUmts(II)I

    move-result v2

    .line 1797
    goto :goto_0

    .line 1805
    :cond_0
    invoke-direct {p0, v1, v0}, Landroid/telephony/SignalStrength;->getRSSIindexUmts(II)I

    move-result v2

    goto :goto_0

    .line 1784
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getItemLevel(II[I)I
    .locals 4
    .param p1, "value"    # I
    .param p2, "valid"    # I
    .param p3, "range"    # [I

    .prologue
    const v3, 0x7fffffff

    const/16 v2, 0x63

    .line 1961
    const/4 v1, 0x0

    .line 1964
    .local v1, "level":I
    if-nez p3, :cond_0

    .line 1965
    const/4 v2, -0x1

    .line 1976
    :goto_0
    return v2

    .line 1967
    :cond_0
    if-ne p2, v2, :cond_1

    if-eq p1, v2, :cond_3

    :cond_1
    if-ne p2, v3, :cond_2

    if-eq p1, v3, :cond_3

    :cond_2
    if-le p1, p2, :cond_4

    .line 1968
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1970
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_5

    .line 1971
    aget v2, p3, v0

    if-lt p1, v2, :cond_6

    .line 1975
    :cond_5
    sget v2, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    add-int/lit8 v3, v0, 0x1

    sub-int v1, v2, v3

    move v2, v1

    .line 1976
    goto :goto_0

    .line 1970
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getItemLevel(I[I)I
    .locals 4
    .param p1, "value"    # I
    .param p2, "range"    # [I

    .prologue
    .line 1981
    const/4 v1, 0x0

    .line 1984
    .local v1, "level":I
    if-nez p2, :cond_0

    .line 1985
    const/4 v2, -0x1

    .line 1992
    :goto_0
    return v2

    .line 1986
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 1987
    aget v2, p2, v0

    if-lt p1, v2, :cond_2

    .line 1991
    :cond_1
    sget v2, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    add-int/lit8 v3, v0, 0x1

    sub-int v1, v2, v3

    move v2, v1

    .line 1992
    goto :goto_0

    .line 1986
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static getLGRssiData()Lcom/lge/telephony/LGRssiData;
    .locals 1

    .prologue
    .line 1953
    sget-object v0, Landroid/telephony/SignalStrength;->mLGRssiData:Lcom/lge/telephony/LGRssiData;

    if-nez v0, :cond_0

    .line 1954
    invoke-static {}, Lcom/lge/telephony/LGRssiData;->getInstance()Lcom/lge/telephony/LGRssiData;

    move-result-object v0

    sput-object v0, Landroid/telephony/SignalStrength;->mLGRssiData:Lcom/lge/telephony/LGRssiData;

    .line 1955
    sget-object v0, Landroid/telephony/SignalStrength;->mLGRssiData:Lcom/lge/telephony/LGRssiData;

    invoke-virtual {v0}, Lcom/lge/telephony/LGRssiData;->init()V

    .line 1958
    :cond_0
    sget-object v0, Landroid/telephony/SignalStrength;->mLGRssiData:Lcom/lge/telephony/LGRssiData;

    return-object v0
.end method

.method private getLevelACG()I
    .locals 1

    .prologue
    .line 1841
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLevelUSC()I

    move-result v0

    return v0
.end method

.method private getLevelATT()I
    .locals 3

    .prologue
    .line 1637
    const/4 v1, 0x0

    .line 1638
    .local v1, "level":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1640
    .local v0, "asu":I
    iget-boolean v2, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v2, :cond_0

    .line 1641
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLteLevelATT()I

    move-result v1

    .line 1642
    if-nez v1, :cond_0

    const/16 v2, 0x63

    if-eq v0, v2, :cond_0

    .line 1643
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getGsmUmtsLevelATT()I

    move-result v1

    .line 1647
    :cond_0
    return v1
.end method

.method private getLevelCT()I
    .locals 5

    .prologue
    .line 1606
    const/4 v2, 0x0

    .line 1608
    .local v2, "level":I
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    .line 1609
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 1610
    if-nez v2, :cond_0

    .line 1611
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 1630
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLevelCT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1631
    return v2

    .line 1614
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 1615
    if-nez v2, :cond_0

    .line 1616
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 1617
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 1618
    .local v1, "evdoLevel":I
    if-nez v1, :cond_2

    .line 1620
    move v2, v0

    goto :goto_0

    .line 1621
    :cond_2
    if-nez v0, :cond_3

    .line 1623
    move v2, v1

    goto :goto_0

    .line 1626
    :cond_3
    if-ge v0, v1, :cond_4

    move v2, v0

    :goto_1
    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method private getLevelKDDI()I
    .locals 5

    .prologue
    .line 1565
    const/4 v2, 0x0

    .line 1567
    .local v2, "level":I
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_2

    .line 1568
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 1569
    if-nez v2, :cond_0

    .line 1570
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 1573
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    const/16 v4, -0x78

    if-eq v3, v4, :cond_1

    iget v3, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    const/16 v4, -0xa0

    if-eq v3, v4, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1576
    const-string v3, "KDDI signalstrength When in call"

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1577
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v2

    .line 1599
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLevelKDDI="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1600
    return v2

    .line 1581
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 1582
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 1583
    .local v1, "evdoLevel":I
    if-nez v1, :cond_3

    .line 1585
    move v2, v0

    .line 1594
    :goto_1
    if-nez v2, :cond_1

    .line 1595
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 1596
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDMALEVEL is Unknown , getLteLevel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1586
    :cond_3
    if-nez v0, :cond_4

    .line 1588
    move v2, v1

    goto :goto_1

    .line 1591
    :cond_4
    if-ge v0, v1, :cond_5

    move v2, v0

    :goto_2
    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2
.end method

.method private getLevelKR()I
    .locals 4

    .prologue
    .line 633
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_3

    .line 636
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    .line 637
    .local v0, "level":I
    const-string v1, "LGU"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    const/16 v1, -0x10

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-lt v1, v2, :cond_0

    if-lez v0, :cond_0

    .line 640
    add-int/lit8 v0, v0, -0x1

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLteRsrq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fixed level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 644
    :cond_0
    if-nez v0, :cond_1

    .line 645
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    .line 661
    :cond_1
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .end local v0    # "level":I
    :cond_2
    return v0

    .line 647
    :cond_3
    const/4 v1, 0x0

    const-string/jumbo v2, "support_svlte"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "1"

    const-string/jumbo v2, "net.ims.ims_indicator"

    const-string v3, "2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 653
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    .restart local v0    # "level":I
    goto :goto_0

    .line 656
    .end local v0    # "level":I
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .restart local v0    # "level":I
    goto :goto_0
.end method

.method private getLevelSPR()I
    .locals 4

    .prologue
    .line 1469
    const/4 v0, 0x0

    .line 1472
    .local v0, "level":I
    iget-boolean v2, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v2, :cond_1

    .line 1473
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    .line 1511
    :cond_0
    :goto_0
    return v0

    .line 1476
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1478
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    goto :goto_0

    .line 1481
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 1484
    .local v1, "networkType":I
    packed-switch v1, :pswitch_data_0

    .line 1499
    :pswitch_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    .line 1500
    if-nez v0, :cond_0

    .line 1501
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v0

    .line 1502
    if-nez v0, :cond_0

    .line 1503
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    goto :goto_0

    .line 1487
    :pswitch_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 1488
    goto :goto_0

    .line 1493
    :pswitch_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v0

    .line 1494
    goto :goto_0

    .line 1496
    :pswitch_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    .line 1497
    goto :goto_0

    .line 1484
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getLevelTMO()I
    .locals 3

    .prologue
    .line 1727
    const/4 v1, 0x0

    .line 1728
    .local v1, "level":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1730
    .local v0, "asu":I
    iget-boolean v2, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v2, :cond_0

    .line 1731
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLteLevelTMO()I

    move-result v1

    .line 1732
    if-nez v1, :cond_0

    const/16 v2, 0x63

    if-eq v0, v2, :cond_0

    .line 1733
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getGsmUmtsLevelTMO()I

    move-result v1

    .line 1737
    :cond_0
    return v1
.end method

.method private getLevelUSC()I
    .locals 2

    .prologue
    .line 1818
    const/4 v0, 0x0

    .line 1823
    .local v0, "level":I
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    .line 1824
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    .line 1832
    :goto_0
    return v0

    .line 1826
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    goto :goto_0
.end method

.method private getLevelVZW()I
    .locals 5

    .prologue
    .line 1518
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    .line 1520
    .local v3, "networkType":I
    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v4, :cond_2

    .line 1521
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 1522
    .local v2, "level":I
    if-nez v2, :cond_1

    .line 1523
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 1524
    if-nez v2, :cond_1

    .line 1525
    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    const/16 v4, 0xe

    if-ne v3, v4, :cond_1

    .line 1529
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v2

    .line 1559
    :cond_1
    :goto_0
    return v2

    .line 1534
    .end local v2    # "level":I
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 1535
    .restart local v2    # "level":I
    if-nez v2, :cond_1

    .line 1536
    packed-switch v3, :pswitch_data_0

    .line 1548
    :pswitch_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 1549
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 1550
    .local v1, "evdoLevel":I
    if-lt v0, v1, :cond_3

    move v2, v0

    :goto_1
    goto :goto_0

    .line 1539
    .end local v0    # "cdmaLevel":I
    .end local v1    # "evdoLevel":I
    :pswitch_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v2

    .line 1540
    goto :goto_0

    .line 1545
    :pswitch_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v2

    .line 1546
    goto :goto_0

    .restart local v0    # "cdmaLevel":I
    .restart local v1    # "evdoLevel":I
    :cond_3
    move v2, v1

    .line 1550
    goto :goto_1

    .line 1536
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getLteLevelATT()I
    .locals 3

    .prologue
    .line 1657
    const/4 v0, 0x0

    .line 1673
    .local v0, "rsrpIconLevel":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x2c

    if-le v1, v2, :cond_0

    const/4 v0, 0x0

    .line 1682
    :goto_0
    return v0

    .line 1674
    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x55

    if-le v1, v2, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    .line 1675
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x5f

    if-le v1, v2, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 1676
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x69

    if-le v1, v2, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 1677
    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x73

    if-le v1, v2, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    .line 1678
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getLteLevelTMO()I
    .locals 3

    .prologue
    .line 1747
    const/4 v0, 0x0

    .line 1764
    .local v0, "rsrpIconLevel":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    .line 1774
    :goto_0
    return v0

    .line 1765
    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x64

    if-le v1, v2, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    .line 1766
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x6e

    if-le v1, v2, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 1767
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x73

    if-le v1, v2, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 1768
    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x78

    if-le v1, v2, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    .line 1769
    :cond_4
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x87

    if-le v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    .line 1770
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNumSignalStrength()I
    .locals 2

    .prologue
    .line 1448
    const-string v0, "BM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SPR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1450
    :cond_0
    const/4 v0, 0x7

    .line 1461
    :goto_0
    return v0

    .line 1453
    :cond_1
    const-string v0, "DCM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1454
    const/4 v0, 0x5

    goto :goto_0

    .line 1457
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNumSignalStrength: mRssiLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    sget v1, Lcom/lge/telephony/LGRssiData;->mRssiLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1458
    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    sget v0, Lcom/lge/telephony/LGRssiData;->mRssiLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 1459
    const/4 v0, 0x6

    goto :goto_0

    .line 1461
    :cond_3
    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    sget v0, Lcom/lge/telephony/LGRssiData;->mRssiLevel:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getOperatorSpecLevel()I
    .locals 3

    .prologue
    .line 1381
    const v0, 0xffff

    .line 1384
    .local v0, "level":I
    const-string v1, "KR"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1385
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLevelKR()I

    move-result v0

    .line 1442
    .end local v0    # "level":I
    :cond_0
    :goto_0
    return v0

    .line 1390
    .restart local v0    # "level":I
    :cond_1
    const-string v1, "SPR"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1391
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLevelSPR()I

    move-result v0

    goto :goto_0

    .line 1397
    :cond_2
    const-string v1, "VZW"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "LRA"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    const-string/jumbo v2, "trf_based_vzw"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1402
    :cond_3
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLevelVZW()I

    move-result v0

    goto :goto_0

    .line 1407
    :cond_4
    const-string v1, "ATT"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1408
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLevelATT()I

    move-result v0

    goto :goto_0

    .line 1413
    :cond_5
    const-string v1, "KDDI"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1414
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLevelKDDI()I

    move-result v0

    goto :goto_0

    .line 1419
    :cond_6
    const-string v1, "CTC"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1420
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLevelCT()I

    move-result v0

    goto :goto_0

    .line 1424
    :cond_7
    const-string v1, "US"

    const-string v2, "TMO"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1425
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLevelTMO()I

    move-result v0

    goto :goto_0

    .line 1430
    :cond_8
    const-string v1, "USC"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1431
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLevelUSC()I

    move-result v0

    goto :goto_0

    .line 1437
    :cond_9
    const-string v1, "ACG"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1438
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLevelACG()I

    move-result v0

    goto :goto_0
.end method

.method private final getRSSIindexGsm(I)I
    .locals 8
    .param p1, "asu"    # I

    .prologue
    const/16 v7, -0x5b

    const/16 v6, -0x60

    const/16 v5, -0x61

    const/16 v4, -0x63

    const/16 v3, -0x67

    .line 1846
    const/4 v0, 0x0

    .line 1848
    .local v0, "iconLevel":I
    const-string v1, "US"

    const-string v2, "TMO"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1849
    if-le p1, v7, :cond_0

    const/4 v0, 0x5

    .line 1872
    :goto_0
    return v0

    .line 1850
    :cond_0
    if-le p1, v6, :cond_1

    if-gt p1, v7, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 1851
    :cond_1
    if-le p1, v4, :cond_2

    if-gt p1, v6, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 1852
    :cond_2
    if-le p1, v3, :cond_3

    if-gt p1, v4, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 1853
    :cond_3
    const/16 v1, -0x69

    if-le p1, v1, :cond_4

    if-gt p1, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    .line 1854
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1857
    :cond_5
    const-string v1, "ATT"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1858
    const/16 v1, -0x4f

    if-lt p1, v1, :cond_6

    const/4 v0, 0x5

    goto :goto_0

    .line 1859
    :cond_6
    const/16 v1, -0x58

    if-lt p1, v1, :cond_7

    const/16 v1, -0x4f

    if-ge p1, v1, :cond_7

    const/4 v0, 0x4

    goto :goto_0

    .line 1860
    :cond_7
    if-lt p1, v5, :cond_8

    const/16 v1, -0x58

    if-ge p1, v1, :cond_8

    const/4 v0, 0x3

    goto :goto_0

    .line 1861
    :cond_8
    if-lt p1, v3, :cond_9

    if-ge p1, v5, :cond_9

    const/4 v0, 0x2

    goto :goto_0

    .line 1862
    :cond_9
    const/16 v1, -0x68

    if-gt p1, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_0

    .line 1863
    :cond_a
    const/4 v0, 0x1

    goto :goto_0

    .line 1867
    :cond_b
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Landroid/telephony/SignalStrength;->LGE_GSM_ASU_VALUE:[I

    .line 1868
    const/16 v1, 0x63

    iget-object v2, p0, Landroid/telephony/SignalStrength;->LGE_GSM_ASU_VALUE:[I

    invoke-direct {p0, p1, v1, v2}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v0

    goto :goto_0

    .line 1867
    :array_0
    .array-data 4
        0xc
        0x9
        0x8
        0x6
        0x5
    .end array-data
.end method

.method private final getRSSIindexUmts(II)I
    .locals 12
    .param p1, "asu"    # I
    .param p2, "asu_ecio"    # I

    .prologue
    const/16 v11, -0x63

    const/16 v10, -0x67

    const/16 v9, -0x69

    const/16 v8, -0x71

    const/16 v7, -0x59

    .line 1877
    const/4 v0, 0x0

    .line 1879
    .local v0, "iconLevel":I
    const/4 v1, 0x0

    .line 1880
    .local v1, "iconLevel_ecio":I
    const/4 v3, 0x0

    .line 1881
    .local v3, "iconLevel_ecio_sum":I
    const/4 v2, 0x0

    .line 1884
    .local v2, "iconLevel_ecio_avr":I
    const-string v5, "US"

    const-string v6, "TMO"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1900
    if-le p1, v7, :cond_0

    const/4 v0, 0x5

    .line 1944
    :goto_0
    return v0

    .line 1901
    :cond_0
    const/16 v5, -0x61

    if-le p1, v5, :cond_1

    if-gt p1, v7, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 1902
    :cond_1
    if-le p1, v10, :cond_2

    const/16 v5, -0x61

    if-gt p1, v5, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 1903
    :cond_2
    if-le p1, v8, :cond_3

    if-gt p1, v10, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 1904
    :cond_3
    const/16 v5, -0x7d

    if-le p1, v5, :cond_4

    if-gt p1, v8, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    .line 1905
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1908
    :cond_5
    const-string v5, "ATT"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1909
    const/16 v5, -0x4f

    if-lt p1, v5, :cond_7

    const/4 v0, 0x5

    .line 1916
    :goto_1
    const/16 v5, -0x64

    if-le p2, v5, :cond_c

    const/4 v1, 0x5

    .line 1924
    :goto_2
    sget-object v5, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    sget v6, Landroid/telephony/SignalStrength;->lastEcIoIndex:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Landroid/telephony/SignalStrength;->lastEcIoIndex:I

    aput v1, v5, v6

    .line 1926
    sget v5, Landroid/telephony/SignalStrength;->lastEcIoIndex:I

    sget-object v6, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    array-length v6, v6

    if-ne v5, v6, :cond_6

    const/4 v5, 0x0

    sput v5, Landroid/telephony/SignalStrength;->lastEcIoIndex:I

    .line 1928
    :cond_6
    const/4 v4, 0x0

    .local v4, "kk":I
    :goto_3
    sget-object v5, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    array-length v5, v5

    if-ge v4, v5, :cond_10

    .line 1929
    sget-object v5, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    aget v5, v5, v4

    add-int/2addr v3, v5

    .line 1928
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1910
    .end local v4    # "kk":I
    :cond_7
    if-lt p1, v7, :cond_8

    const/16 v5, -0x4f

    if-ge p1, v5, :cond_8

    const/4 v0, 0x4

    goto :goto_1

    .line 1911
    :cond_8
    if-lt p1, v11, :cond_9

    if-ge p1, v7, :cond_9

    const/4 v0, 0x3

    goto :goto_1

    .line 1912
    :cond_9
    if-lt p1, v9, :cond_a

    if-ge p1, v11, :cond_a

    const/4 v0, 0x2

    goto :goto_1

    .line 1913
    :cond_a
    if-ge p1, v9, :cond_b

    const/4 v0, 0x1

    goto :goto_1

    .line 1914
    :cond_b
    const/4 v0, 0x1

    goto :goto_1

    .line 1917
    :cond_c
    const/16 v5, -0x78

    if-le p2, v5, :cond_d

    const/4 v1, 0x4

    goto :goto_2

    .line 1918
    :cond_d
    const/16 v5, -0x8c

    if-le p2, v5, :cond_e

    const/4 v1, 0x3

    goto :goto_2

    .line 1919
    :cond_e
    const/16 v5, -0xa0

    if-le p2, v5, :cond_f

    const/4 v1, 0x2

    goto :goto_2

    .line 1920
    :cond_f
    const/4 v1, 0x1

    goto :goto_2

    .line 1931
    .restart local v4    # "kk":I
    :cond_10
    sget-object v5, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    array-length v5, v5

    div-int v2, v3, v5

    .line 1932
    if-le v1, v2, :cond_11

    .line 1934
    :goto_4
    if-ge v0, v1, :cond_12

    :goto_5
    goto/16 :goto_0

    :cond_11
    move v1, v2

    .line 1932
    goto :goto_4

    :cond_12
    move v0, v1

    .line 1934
    goto :goto_5

    .line 1938
    .end local v4    # "kk":I
    :cond_13
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    iput-object v5, p0, Landroid/telephony/SignalStrength;->LGE_UMTS_ASU_VALUE:[I

    .line 1939
    const/16 v5, 0x63

    iget-object v6, p0, Landroid/telephony/SignalStrength;->LGE_UMTS_ASU_VALUE:[I

    invoke-direct {p0, p1, v5, v6}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v0

    goto/16 :goto_0

    .line 1938
    nop

    :array_0
    .array-data 4
        0xd
        0xa
        0x7
        0x5
        0x2
    .end array-data
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1357
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 381
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 382
    .local v0, "ss":Landroid/telephony/SignalStrength;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 383
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 384
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 385
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 386
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 387
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 388
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 389
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 390
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 391
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 392
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 393
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 396
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 397
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 398
    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 134
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 135
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 136
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1305
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1306
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1307
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1308
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1309
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1310
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1311
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1312
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1313
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1314
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1315
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1316
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1317
    const-string v0, "TdScdma"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 1318
    const-string v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1320
    const-string v0, "Dataf"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 1323
    const-string v0, "mRadioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 1325
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 319
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 320
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 321
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 322
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 323
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 324
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 325
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 326
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 327
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 328
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 329
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 330
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 331
    iget v0, p1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 332
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 334
    iget v0, p1, Landroid/telephony/SignalStrength;->datafeature:I

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 337
    iget v0, p1, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 339
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1247
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1252
    .local v2, "s":Landroid/telephony/SignalStrength;
    if-nez p1, :cond_1

    .line 1256
    .end local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_0
    :goto_0
    return v3

    .line 1248
    :catch_0
    move-exception v1

    .line 1249
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1256
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1334
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1335
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1336
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1337
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1338
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1339
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1340
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1341
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1342
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1343
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1344
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1345
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1346
    const-string v0, "TdScdma"

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1347
    const-string v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1349
    const-string v0, "mRadioTechnology"

    iget v1, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1351
    return-void
.end method

.method public getAsuLevel()I
    .locals 4

    .prologue
    .line 670
    const/4 v0, 0x0

    .line 671
    .local v0, "asuLevel":I
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_2

    .line 672
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_1

    .line 673
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v3

    if-nez v3, :cond_0

    .line 674
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 696
    :goto_0
    return v0

    .line 676
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    move-result v0

    goto :goto_0

    .line 679
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    goto :goto_0

    .line 682
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 683
    .local v1, "cdmaAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 684
    .local v2, "evdoAsuLevel":I
    if-nez v2, :cond_3

    .line 686
    move v0, v1

    goto :goto_0

    .line 687
    :cond_3
    if-nez v1, :cond_4

    .line 689
    move v0, v2

    goto :goto_0

    .line 692
    :cond_4
    if-ge v1, v2, :cond_5

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 930
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 931
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 935
    .local v2, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    .line 943
    .local v0, "cdmaAsuLevel":I
    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    .line 950
    .local v3, "ecioAsuLevel":I
    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    .line 952
    .local v4, "level":I
    :goto_2
    return v4

    .line 936
    .end local v0    # "cdmaAsuLevel":I
    .end local v3    # "ecioAsuLevel":I
    .end local v4    # "level":I
    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 937
    .end local v0    # "cdmaAsuLevel":I
    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 938
    .end local v0    # "cdmaAsuLevel":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 939
    .end local v0    # "cdmaAsuLevel":I
    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 940
    .end local v0    # "cdmaAsuLevel":I
    :cond_4
    const/16 v0, 0x63

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 944
    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 945
    .end local v3    # "ecioAsuLevel":I
    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 946
    .end local v3    # "ecioAsuLevel":I
    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 947
    .end local v3    # "ecioAsuLevel":I
    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 948
    .end local v3    # "ecioAsuLevel":I
    :cond_9
    const/16 v3, 0x63

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    :cond_a
    move v4, v3

    .line 950
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 879
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 880
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 885
    .local v1, "cdmaEcio":I
    const/4 v3, 0x0

    .line 886
    .local v3, "levelDbm":I
    const/4 v4, 0x0

    .line 887
    .local v4, "levelEcio":I
    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/telephony/LGRssiData;->getCdmaDbmValue()[I

    move-result-object v5

    .line 888
    .local v5, "mDbmValue":[I
    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/telephony/LGRssiData;->getEcioValue()[I

    move-result-object v6

    .line 892
    .local v6, "mEcioValue":[I
    if-nez v5, :cond_0

    if-eqz v6, :cond_5

    .line 893
    :cond_0
    invoke-direct {p0, v0, v5}, Landroid/telephony/SignalStrength;->getItemLevel(I[I)I

    move-result v3

    .line 894
    invoke-direct {p0, v1, v6}, Landroid/telephony/SignalStrength;->getItemLevel(I[I)I

    move-result v4

    .line 896
    if-eq v3, v8, :cond_2

    if-eq v4, v8, :cond_2

    .line 897
    if-ge v3, v4, :cond_1

    move v7, v3

    :goto_0
    move v2, v7

    .line 921
    :goto_1
    return v2

    :cond_1
    move v7, v4

    .line 897
    goto :goto_0

    .line 898
    :cond_2
    if-eq v3, v8, :cond_3

    move v2, v3

    goto :goto_1

    .line 899
    :cond_3
    if-eq v4, v8, :cond_4

    move v2, v4

    goto :goto_1

    .line 901
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 906
    :cond_5
    const/16 v7, -0x4b

    if-lt v0, v7, :cond_6

    const/4 v3, 0x4

    .line 913
    :goto_2
    const/16 v7, -0x5a

    if-lt v1, v7, :cond_a

    const/4 v4, 0x4

    .line 919
    :goto_3
    if-ge v3, v4, :cond_e

    move v2, v3

    .line 921
    .local v2, "level":I
    :goto_4
    goto :goto_1

    .line 907
    .end local v2    # "level":I
    :cond_6
    const/16 v7, -0x55

    if-lt v0, v7, :cond_7

    const/4 v3, 0x3

    goto :goto_2

    .line 908
    :cond_7
    const/16 v7, -0x5f

    if-lt v0, v7, :cond_8

    const/4 v3, 0x2

    goto :goto_2

    .line 909
    :cond_8
    const/16 v7, -0x64

    if-lt v0, v7, :cond_9

    const/4 v3, 0x1

    goto :goto_2

    .line 910
    :cond_9
    const/4 v3, 0x0

    goto :goto_2

    .line 914
    :cond_a
    const/16 v7, -0x6e

    if-lt v1, v7, :cond_b

    const/4 v4, 0x3

    goto :goto_3

    .line 915
    :cond_b
    const/16 v7, -0x82

    if-lt v1, v7, :cond_c

    const/4 v4, 0x2

    goto :goto_3

    .line 916
    :cond_c
    const/16 v7, -0x96

    if-lt v1, v7, :cond_d

    const/4 v4, 0x1

    goto :goto_3

    .line 917
    :cond_d
    const/4 v4, 0x0

    goto :goto_3

    :cond_e
    move v2, v4

    .line 919
    goto :goto_4
.end method

.method public getDbm()I
    .locals 5

    .prologue
    const/16 v4, -0x78

    .line 705
    const v1, 0x7fffffff

    .line 707
    .local v1, "dBm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 708
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_2

    .line 709
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v3

    if-nez v3, :cond_1

    .line 710
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    :goto_0
    move v0, v1

    .line 725
    :cond_0
    :goto_1
    return v0

    .line 712
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    goto :goto_0

    .line 715
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    goto :goto_0

    .line 718
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 719
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 721
    .local v2, "evdoDbm":I
    if-eq v2, v4, :cond_0

    if-ne v0, v4, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    if-lt v0, v2, :cond_0

    move v0, v2

    goto :goto_1
.end method

.method public getEvdoAsuLevel()I
    .locals 6

    .prologue
    .line 1011
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1012
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1016
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    .line 1023
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    .line 1030
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    .line 1032
    .local v2, "level":I
    :goto_2
    return v2

    .line 1017
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1018
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1019
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1020
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1021
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/16 v3, 0x63

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1024
    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1025
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1026
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1027
    .end local v4    # "levelEvdoSnr":I
    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1028
    .end local v4    # "levelEvdoSnr":I
    :cond_9
    const/16 v4, 0x63

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    :cond_a
    move v2, v4

    .line 1030
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 961
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 962
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 967
    .local v1, "evdoSnr":I
    const/4 v3, 0x0

    .line 968
    .local v3, "levelEvdoDbm":I
    const/4 v4, 0x0

    .line 969
    .local v4, "levelEvdoSnr":I
    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/telephony/LGRssiData;->getEvdoDbmValue()[I

    move-result-object v5

    .line 970
    .local v5, "mEvdoDbmValue":[I
    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/telephony/LGRssiData;->getEvdoSnrValue()[I

    move-result-object v6

    .line 974
    .local v6, "mEvdoSnrValue":[I
    if-nez v5, :cond_0

    if-eqz v6, :cond_5

    .line 975
    :cond_0
    invoke-direct {p0, v0, v5}, Landroid/telephony/SignalStrength;->getItemLevel(I[I)I

    move-result v3

    .line 976
    invoke-direct {p0, v1, v6}, Landroid/telephony/SignalStrength;->getItemLevel(I[I)I

    move-result v4

    .line 978
    if-eq v3, v8, :cond_2

    if-eq v4, v8, :cond_2

    .line 979
    if-ge v3, v4, :cond_1

    move v7, v3

    :goto_0
    move v2, v7

    .line 1002
    :goto_1
    return v2

    :cond_1
    move v7, v4

    .line 979
    goto :goto_0

    .line 980
    :cond_2
    if-eq v3, v8, :cond_3

    move v2, v3

    goto :goto_1

    .line 981
    :cond_3
    if-eq v4, v8, :cond_4

    move v2, v4

    goto :goto_1

    .line 983
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 988
    :cond_5
    const/16 v7, -0x41

    if-lt v0, v7, :cond_6

    const/4 v3, 0x4

    .line 994
    :goto_2
    const/4 v7, 0x7

    if-lt v1, v7, :cond_a

    const/4 v4, 0x4

    .line 1000
    :goto_3
    if-ge v3, v4, :cond_e

    move v2, v3

    .line 1002
    .local v2, "level":I
    :goto_4
    goto :goto_1

    .line 989
    .end local v2    # "level":I
    :cond_6
    const/16 v7, -0x4b

    if-lt v0, v7, :cond_7

    const/4 v3, 0x3

    goto :goto_2

    .line 990
    :cond_7
    const/16 v7, -0x5a

    if-lt v0, v7, :cond_8

    const/4 v3, 0x2

    goto :goto_2

    .line 991
    :cond_8
    const/16 v7, -0x69

    if-lt v0, v7, :cond_9

    const/4 v3, 0x1

    goto :goto_2

    .line 992
    :cond_9
    const/4 v3, 0x0

    goto :goto_2

    .line 995
    :cond_a
    const/4 v7, 0x5

    if-lt v1, v7, :cond_b

    const/4 v4, 0x3

    goto :goto_3

    .line 996
    :cond_b
    const/4 v7, 0x3

    if-lt v1, v7, :cond_c

    const/4 v4, 0x2

    goto :goto_3

    .line 997
    :cond_c
    const/4 v7, 0x1

    if-lt v1, v7, :cond_d

    const/4 v4, 0x1

    goto :goto_3

    .line 998
    :cond_d
    const/4 v4, 0x0

    goto :goto_3

    :cond_e
    move v2, v4

    .line 1000
    goto :goto_4
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    .prologue
    .line 868
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 870
    .local v0, "level":I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 736
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 737
    .local v2, "gsmSignalStrength":I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_0

    move v0, v3

    .line 738
    .local v0, "asu":I
    :goto_0
    if-eq v0, v3, :cond_1

    .line 739
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 744
    .local v1, "dBm":I
    :goto_1
    return v1

    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    :cond_0
    move v0, v2

    .line 737
    goto :goto_0

    .line 741
    .restart local v0    # "asu":I
    :cond_1
    const/4 v1, -0x1

    .restart local v1    # "dBm":I
    goto :goto_1
.end method

.method public getGsmLevel()I
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, -0x1

    const/16 v8, 0x63

    .line 755
    const/4 v1, 0x0

    .line 762
    .local v1, "level":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 765
    .local v0, "asu":I
    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/telephony/LGRssiData;->getAsuGsmValue()[I

    move-result-object v3

    .line 766
    .local v3, "mAsuGsmValue":[I
    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/telephony/LGRssiData;->getAsuUmtsValue()[I

    move-result-object v4

    .line 767
    .local v4, "mAsuUmtsValue":[I
    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/telephony/LGRssiData;->getAsuEtcValue()[I

    move-result-object v2

    .line 771
    .local v2, "mAsuEtcValue":[I
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    sget v6, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_2

    .line 773
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getRadioTechnology()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 786
    iget-object v6, p0, Landroid/telephony/SignalStrength;->LGE_UMTS_ASU_VALUE:[I

    invoke-direct {p0, v0, v8, v6}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v1

    .line 791
    :goto_0
    if-ne v1, v9, :cond_1

    .line 855
    :cond_0
    :goto_1
    return v5

    .line 778
    :sswitch_0
    iget-object v6, p0, Landroid/telephony/SignalStrength;->LGE_GSM_ASU_VALUE:[I

    invoke-direct {p0, v0, v8, v6}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v1

    .line 779
    goto :goto_0

    :cond_1
    move v5, v1

    .line 791
    goto :goto_1

    .line 792
    :cond_2
    if-nez v3, :cond_3

    if-eqz v4, :cond_a

    .line 793
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getRadioTechnology()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 812
    :pswitch_0
    const-string v6, "KR"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 813
    if-eqz v3, :cond_4

    .line 814
    invoke-direct {p0, v0, v8, v3}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v1

    .line 845
    :cond_4
    :goto_2
    if-eq v1, v9, :cond_0

    move v5, v1

    goto :goto_1

    .line 797
    :pswitch_1
    invoke-direct {p0, v0, v8, v3}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v1

    .line 798
    goto :goto_2

    .line 805
    :pswitch_2
    invoke-direct {p0, v0, v8, v4}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v1

    .line 806
    goto :goto_2

    .line 819
    :cond_5
    const-string v6, "VZW"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "LRA"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 821
    :cond_6
    invoke-direct {p0, v0, v8, v4}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v1

    .line 822
    goto :goto_2

    .line 827
    :cond_7
    const-string v6, "SPR"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 828
    invoke-direct {p0, v0, v8, v3}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v1

    .line 829
    goto :goto_2

    .line 833
    :cond_8
    const-string v6, "CTC"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 834
    invoke-direct {p0, v0, v8, v3}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v1

    .line 835
    goto :goto_2

    .line 838
    :cond_9
    invoke-direct {p0, v0, v8, v3}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v1

    goto :goto_2

    .line 849
    :cond_a
    const/4 v5, 0x2

    if-le v0, v5, :cond_b

    if-ne v0, v8, :cond_c

    :cond_b
    const/4 v1, 0x0

    :goto_3
    move v5, v1

    .line 855
    goto :goto_1

    .line 850
    :cond_c
    const/16 v5, 0xc

    if-lt v0, v5, :cond_d

    const/4 v1, 0x4

    goto :goto_3

    .line 851
    :cond_d
    const/16 v5, 0x8

    if-lt v0, v5, :cond_e

    const/4 v1, 0x3

    goto :goto_3

    .line 852
    :cond_e
    const/4 v5, 0x5

    if-lt v0, v5, :cond_f

    const/4 v1, 0x2

    goto :goto_3

    .line 853
    :cond_f
    const/4 v1, 0x1

    goto :goto_3

    .line 773
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x10 -> :sswitch_0
    .end sparse-switch

    .line 793
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .locals 5

    .prologue
    .line 594
    const/4 v2, 0x0

    .line 597
    .local v2, "level":I
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getOperatorSpecLevel()I

    move-result v2

    const v4, 0xffff

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 627
    .end local v2    # "level":I
    .local v3, "level":I
    :goto_0
    return v3

    .line 601
    .end local v3    # "level":I
    .restart local v2    # "level":I
    :cond_0
    const/4 v2, 0x0

    .line 604
    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v4, :cond_2

    .line 605
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 606
    if-nez v2, :cond_1

    .line 607
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v2

    .line 608
    if-nez v2, :cond_1

    .line 609
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    :cond_1
    :goto_1
    move v3, v2

    .line 627
    .end local v2    # "level":I
    .restart local v3    # "level":I
    goto :goto_0

    .line 613
    .end local v3    # "level":I
    .restart local v2    # "level":I
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 614
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 615
    .local v1, "evdoLevel":I
    if-nez v1, :cond_3

    .line 617
    move v2, v0

    goto :goto_1

    .line 618
    :cond_3
    if-nez v0, :cond_4

    .line 620
    move v2, v1

    goto :goto_1

    .line 623
    :cond_4
    if-ge v0, v1, :cond_5

    move v2, v0

    :goto_2
    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2
.end method

.method public getLteAsuLevel()I
    .locals 3

    .prologue
    .line 1148
    const/16 v0, 0x63

    .line 1149
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 1163
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1166
    :goto_0
    return v0

    .line 1164
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 585
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 1041
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 12

    .prologue
    const/16 v11, 0x12c

    const/16 v10, 0x3f

    const/16 v9, -0x2c

    const/4 v8, -0x1

    .line 1056
    const/4 v4, 0x0

    .local v4, "rssiIconLevel":I
    const/4 v3, -0x1

    .local v3, "rsrpIconLevel":I
    const/4 v5, -0x1

    .line 1059
    .local v5, "snrIconLevel":I
    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/telephony/LGRssiData;->getRsrpValue()[I

    move-result-object v0

    .line 1060
    .local v0, "mLteRsrpValue":[I
    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/telephony/LGRssiData;->getRssnrValue()[I

    move-result-object v1

    .line 1061
    .local v1, "mLteRssnrValue":[I
    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/telephony/LGRssiData;->getLteSignalValue()[I

    move-result-object v2

    .line 1067
    .local v2, "mLteSignalValue":[I
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    sget v6, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_0

    .line 1068
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const v7, 0x7fffffff

    iget-object v8, p0, Landroid/telephony/SignalStrength;->LGE_LTE_RSRP_VALUE:[I

    invoke-direct {p0, v6, v7, v8}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v6

    .line 1138
    :goto_0
    return v6

    .line 1069
    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_7

    .line 1070
    :cond_1
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-direct {p0, v6, v9, v0}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v3

    .line 1071
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-direct {p0, v6, v11, v1}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v5

    .line 1076
    if-eq v5, v8, :cond_3

    if-eq v3, v8, :cond_3

    .line 1077
    if-ge v3, v5, :cond_2

    move v6, v3

    goto :goto_0

    :cond_2
    move v6, v5

    goto :goto_0

    .line 1080
    :cond_3
    if-eq v5, v8, :cond_4

    move v6, v5

    goto :goto_0

    .line 1082
    :cond_4
    if-eq v3, v8, :cond_5

    move v6, v3

    goto :goto_0

    .line 1084
    :cond_5
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-direct {p0, v6, v10, v2}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v4

    .line 1088
    if-ne v4, v8, :cond_6

    const/4 v6, 0x0

    goto :goto_0

    :cond_6
    move v6, v4

    goto :goto_0

    .line 1092
    :cond_7
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v6, v9, :cond_a

    const/4 v3, -0x1

    .line 1105
    :cond_8
    :goto_1
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-le v6, v11, :cond_f

    const/4 v5, -0x1

    .line 1117
    :cond_9
    :goto_2
    if-eq v5, v8, :cond_15

    if-eq v3, v8, :cond_15

    .line 1123
    if-ge v3, v5, :cond_14

    move v6, v3

    goto :goto_0

    .line 1093
    :cond_a
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v7, -0x55

    if-lt v6, v7, :cond_b

    const/4 v3, 0x4

    goto :goto_1

    .line 1094
    :cond_b
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v7, -0x5f

    if-lt v6, v7, :cond_c

    const/4 v3, 0x3

    goto :goto_1

    .line 1095
    :cond_c
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v7, -0x69

    if-lt v6, v7, :cond_d

    const/4 v3, 0x2

    goto :goto_1

    .line 1096
    :cond_d
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v7, -0x73

    if-lt v6, v7, :cond_e

    const/4 v3, 0x1

    goto :goto_1

    .line 1097
    :cond_e
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v7, -0x8c

    if-lt v6, v7, :cond_8

    const/4 v3, 0x0

    goto :goto_1

    .line 1106
    :cond_f
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v7, 0x82

    if-lt v6, v7, :cond_10

    const/4 v5, 0x4

    goto :goto_2

    .line 1107
    :cond_10
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v7, 0x2d

    if-lt v6, v7, :cond_11

    const/4 v5, 0x3

    goto :goto_2

    .line 1108
    :cond_11
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v7, 0xa

    if-lt v6, v7, :cond_12

    const/4 v5, 0x2

    goto :goto_2

    .line 1109
    :cond_12
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v7, -0x1e

    if-lt v6, v7, :cond_13

    const/4 v5, 0x1

    goto :goto_2

    .line 1110
    :cond_13
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v7, -0xc8

    if-lt v6, v7, :cond_9

    .line 1111
    const/4 v5, 0x0

    goto :goto_2

    :cond_14
    move v6, v5

    .line 1123
    goto/16 :goto_0

    .line 1126
    :cond_15
    if-eq v5, v8, :cond_16

    move v6, v5

    goto/16 :goto_0

    .line 1128
    :cond_16
    if-eq v3, v8, :cond_17

    move v6, v3

    goto/16 :goto_0

    .line 1131
    :cond_17
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-le v6, v10, :cond_19

    const/4 v4, 0x0

    :cond_18
    :goto_3
    move v6, v4

    .line 1138
    goto/16 :goto_0

    .line 1132
    :cond_19
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v7, 0xc

    if-lt v6, v7, :cond_1a

    const/4 v4, 0x4

    goto :goto_3

    .line 1133
    :cond_1a
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v7, 0x8

    if-lt v6, v7, :cond_1b

    const/4 v4, 0x3

    goto :goto_3

    .line 1134
    :cond_1b
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v7, 0x5

    if-lt v6, v7, :cond_1c

    const/4 v4, 0x2

    goto :goto_3

    .line 1135
    :cond_1c
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v6, :cond_18

    const/4 v4, 0x1

    goto :goto_3
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getRadioTechnology()I
    .locals 1

    .prologue
    .line 1377
    iget v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    return v0
.end method

.method public getTdScdmaAsuLevel()I
    .locals 3

    .prologue
    .line 1215
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1218
    .local v1, "tdScdmaDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1221
    .local v0, "tdScdmaAsuLevel":I
    :goto_0
    return v0

    .line 1219
    .end local v0    # "tdScdmaAsuLevel":I
    :cond_0
    add-int/lit8 v0, v1, 0x78

    .restart local v0    # "tdScdmaAsuLevel":I
    goto :goto_0
.end method

.method public getTdScdmaDbm()I
    .locals 1

    .prologue
    .line 1182
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return v0
.end method

.method public getTdScdmaLevel()I
    .locals 3

    .prologue
    .line 1194
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1197
    .local v1, "tdScdmaDbm":I
    const/16 v2, -0x19

    if-gt v1, v2, :cond_0

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    .line 1198
    :cond_0
    const/4 v0, 0x0

    .line 1206
    .local v0, "level":I
    :goto_0
    return v0

    .line 1199
    .end local v0    # "level":I
    :cond_1
    const/16 v2, -0x31

    if-lt v1, v2, :cond_2

    const/4 v0, 0x4

    .restart local v0    # "level":I
    goto :goto_0

    .line 1200
    .end local v0    # "level":I
    :cond_2
    const/16 v2, -0x49

    if-lt v1, v2, :cond_3

    const/4 v0, 0x3

    .restart local v0    # "level":I
    goto :goto_0

    .line 1201
    .end local v0    # "level":I
    :cond_3
    const/16 v2, -0x61

    if-lt v1, v2, :cond_4

    const/4 v0, 0x2

    .restart local v0    # "level":I
    goto :goto_0

    .line 1202
    .end local v0    # "level":I
    :cond_4
    const/16 v2, -0x78

    if-lt v1, v2, :cond_5

    const/4 v0, 0x1

    .restart local v0    # "level":I
    goto :goto_0

    .line 1203
    .end local v0    # "level":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "level":I
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1229
    const/16 v0, 0x1f

    .line 1230
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .locals 1
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsm"    # Z

    .prologue
    .line 298
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 299
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 300
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 301
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 302
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 303
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 304
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 305
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 306
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 307
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 308
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 309
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 310
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 311
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 313
    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsm"    # Z

    .prologue
    .line 269
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 272
    return-void
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 1173
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setGsm(Z)V
    .locals 0
    .param p1, "gsmFlag"    # Z

    .prologue
    .line 504
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 505
    return-void
.end method

.method public setRadioTechnology(I)V
    .locals 0
    .param p1, "radioTechnology"    # I

    .prologue
    .line 1367
    iput p1, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 1369
    return-void
.end method

.method public setfeature(I)V
    .locals 0
    .param p1, "feature"    # I

    .prologue
    .line 509
    iput p1, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 510
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string v0, "gsm|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "cdma"

    goto :goto_0
.end method

.method public validateInput()V
    .locals 6

    .prologue
    const/16 v1, 0x63

    const/16 v5, 0x8

    const/16 v2, -0x78

    const/4 v3, -0x1

    const v4, 0x7fffffff

    .line 463
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 466
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 467
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 469
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_0
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 470
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 472
    const-string v0, "KDDI"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 473
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-gt v0, v5, :cond_1

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_1
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 482
    :goto_4
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_2

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_2
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 483
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 484
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 485
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :goto_7
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 488
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    neg-int v4, v0

    :cond_3
    iput v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 493
    return-void

    :cond_4
    move v0, v1

    .line 463
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 466
    goto :goto_1

    .line 467
    :cond_6
    const/16 v0, -0xa0

    goto :goto_2

    :cond_7
    move v0, v3

    .line 470
    goto :goto_3

    .line 476
    :cond_8
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-gt v0, v5, :cond_9

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_9
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    goto :goto_4

    :cond_a
    move v0, v4

    .line 483
    goto :goto_5

    :cond_b
    move v0, v4

    .line 484
    goto :goto_6

    :cond_c
    move v0, v4

    .line 485
    goto :goto_7
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 405
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    iget v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    iget v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    return-void

    .line 418
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
