.class Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "KrServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    return-void
.end method
