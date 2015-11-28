.class Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;
.super Ljava/lang/Object;
.source "LgeSmsDupProc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LgeSmsDupProc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompareMtSmsItem"
.end annotation


# instance fields
.field address:Ljava/lang/String;

.field body:Ljava/lang/String;

.field messageId:I

.field final synthetic this$0:Lcom/android/internal/telephony/LgeSmsDupProc;

.field timeStamp:J


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LgeSmsDupProc;JLjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p2, "timeStamp"    # J
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "messageId"    # I
    .param p6, "body"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;->this$0:Lcom/android/internal/telephony/LgeSmsDupProc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;->timeStamp:J

    .line 65
    iput-object v2, p0, Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;->address:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;->messageId:I

    .line 67
    iput-object v2, p0, Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;->body:Ljava/lang/String;

    .line 70
    iput-wide p2, p0, Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;->timeStamp:J

    .line 71
    iput-object p4, p0, Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;->address:Ljava/lang/String;

    .line 72
    iput p5, p0, Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;->messageId:I

    .line 73
    iput-object p6, p0, Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;->body:Ljava/lang/String;

    .line 74
    return-void
.end method
