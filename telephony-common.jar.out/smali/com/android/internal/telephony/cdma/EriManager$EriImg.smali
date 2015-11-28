.class Lcom/android/internal/telephony/cdma/EriManager$EriImg;
.super Ljava/lang/Object;
.source "EriManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/EriManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EriImg"
.end annotation


# instance fields
.field public mAmountOfTextData:I

.field public mIconFileName:Ljava/lang/String;

.field public mImageId:I

.field public mReservedBits:I

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/EriManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/EriManager;IIILjava/lang/String;)V
    .locals 0
    .param p2, "imageId"    # I
    .param p3, "reservedBits"    # I
    .param p4, "amountOfTextData"    # I
    .param p5, "iconFileName"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager$EriImg;->this$0:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput p2, p0, Lcom/android/internal/telephony/cdma/EriManager$EriImg;->mImageId:I

    .line 137
    iput p3, p0, Lcom/android/internal/telephony/cdma/EriManager$EriImg;->mReservedBits:I

    .line 138
    iput p4, p0, Lcom/android/internal/telephony/cdma/EriManager$EriImg;->mAmountOfTextData:I

    .line 139
    iput-object p5, p0, Lcom/android/internal/telephony/cdma/EriManager$EriImg;->mIconFileName:Ljava/lang/String;

    .line 140
    return-void
.end method
