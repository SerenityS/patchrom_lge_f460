.class Lcom/android/internal/telephony/lgdata/MMdebuger$PDNLostHistory;
.super Ljava/lang/Object;
.source "MMdebuger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/MMdebuger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PDNLostHistory"
.end annotation


# instance fields
.field PDNIPv:I

.field PDNType:I

.field RadioTech:I

.field curDay:I

.field curHour:I

.field curMinute:I

.field curMonth:I

.field curSecond:I

.field curYear:I

.field final synthetic this$0:Lcom/android/internal/telephony/lgdata/MMdebuger;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/lgdata/MMdebuger;IIIIII)V
    .locals 0
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I
    .param p5, "d"    # I
    .param p6, "e"    # I
    .param p7, "f"    # I

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNLostHistory;->this$0:Lcom/android/internal/telephony/lgdata/MMdebuger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNLostHistory;->curYear:I

    iput p3, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNLostHistory;->curMonth:I

    iput p4, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNLostHistory;->curDay:I

    iput p5, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNLostHistory;->curHour:I

    iput p6, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNLostHistory;->curMinute:I

    iput p7, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNLostHistory;->curSecond:I

    return-void
.end method
