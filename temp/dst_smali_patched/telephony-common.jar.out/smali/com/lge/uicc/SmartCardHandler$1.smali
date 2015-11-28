.class Lcom/lge/uicc/SmartCardHandler$1;
.super Ljava/util/TimerTask;
.source "SmartCardHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/uicc/SmartCardHandler;->registerTimeoutTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/SmartCardHandler;


# direct methods
.method constructor <init>(Lcom/lge/uicc/SmartCardHandler;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/lge/uicc/SmartCardHandler$1;->this$0:Lcom/lge/uicc/SmartCardHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/lge/uicc/SmartCardHandler$1;->this$0:Lcom/lge/uicc/SmartCardHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/lge/uicc/SmartCardHandler;->sendEmptyMessage(I)Z

    return-void
.end method
