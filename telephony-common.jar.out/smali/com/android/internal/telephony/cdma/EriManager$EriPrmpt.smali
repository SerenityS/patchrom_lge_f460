.class Lcom/android/internal/telephony/cdma/EriManager$EriPrmpt;
.super Ljava/lang/Object;
.source "EriManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/EriManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EriPrmpt"
.end annotation


# static fields
.field public static final ERI_CALL_PROMPT_TABLE_SIZE:I = 0x3


# instance fields
.field public mAmountOfTextData:I

.field public mCallPromptId:I

.field public mCharacterEncodingType:I

.field public mReservedBits1:I

.field public mReservedBits2:I

.field public mReservedBits3:I

.field public mTextData:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/EriManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/EriManager;IIIIIILjava/lang/String;)V
    .locals 0
    .param p2, "reservedBits1"    # I
    .param p3, "callPromptId"    # I
    .param p4, "reservedBits2"    # I
    .param p5, "reservedBits3"    # I
    .param p6, "characterEncodingType"    # I
    .param p7, "amountOfTextData"    # I
    .param p8, "textData"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager$EriPrmpt;->this$0:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput p2, p0, Lcom/android/internal/telephony/cdma/EriManager$EriPrmpt;->mReservedBits1:I

    .line 117
    iput p3, p0, Lcom/android/internal/telephony/cdma/EriManager$EriPrmpt;->mCallPromptId:I

    .line 118
    iput p4, p0, Lcom/android/internal/telephony/cdma/EriManager$EriPrmpt;->mReservedBits2:I

    .line 119
    iput p5, p0, Lcom/android/internal/telephony/cdma/EriManager$EriPrmpt;->mReservedBits3:I

    .line 120
    iput p6, p0, Lcom/android/internal/telephony/cdma/EriManager$EriPrmpt;->mCharacterEncodingType:I

    .line 121
    iput p7, p0, Lcom/android/internal/telephony/cdma/EriManager$EriPrmpt;->mAmountOfTextData:I

    .line 122
    iput-object p8, p0, Lcom/android/internal/telephony/cdma/EriManager$EriPrmpt;->mTextData:Ljava/lang/String;

    .line 123
    return-void
.end method
