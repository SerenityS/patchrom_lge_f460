.class Lcom/lge/uicc/EapAkaHandler$1;
.super Ljava/util/TimerTask;
.source "EapAkaHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/uicc/EapAkaHandler;->registerTimeoutTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/EapAkaHandler;


# direct methods
.method constructor <init>(Lcom/lge/uicc/EapAkaHandler;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/lge/uicc/EapAkaHandler$1;->this$0:Lcom/lge/uicc/EapAkaHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/lge/uicc/EapAkaHandler$1;->this$0:Lcom/lge/uicc/EapAkaHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lge/uicc/EapAkaHandler;->sendEmptyMessage(I)Z

    return-void
.end method
