.class Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;
.super Ljava/lang/Object;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaginationIndicator"
.end annotation


# instance fields
.field private mLength:I

.field private mSequence:I

.field private mTotalCount:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "sequence"    # I
    .param p2, "totalCount"    # I
    .param p3, "length"    # I

    .prologue
    .line 2527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2528
    iput p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;->mSequence:I

    .line 2529
    iput p2, p0, Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;->mTotalCount:I

    .line 2530
    iput p3, p0, Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;->mLength:I

    .line 2531
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 2542
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;->mLength:I

    return v0
.end method

.method public getSequence()I
    .locals 1

    .prologue
    .line 2534
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;->mSequence:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 2538
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;->mTotalCount:I

    return v0
.end method
