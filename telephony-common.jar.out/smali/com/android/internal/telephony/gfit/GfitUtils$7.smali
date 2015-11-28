.class Lcom/android/internal/telephony/gfit/GfitUtils$7;
.super Ljava/lang/Object;
.source "GfitUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gfit/GfitUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gfit/GfitUtils;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gfit/GfitUtils;)V
    .locals 0

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$7;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/16 v4, 0xd1

    .line 1243
    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils$7;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gfit/GfitUtils;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1244
    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils$7;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gfit/GfitUtils;->removeMessages(I)V

    .line 1247
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils$7;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    iget-object v3, v3, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 1248
    .local v1, "operatorNumeric":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils$7;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    iget-object v3, v3, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->getRAT()Ljava/lang/String;

    move-result-object v2

    .line 1250
    .local v2, "operatorRat":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils$7;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    iget-object v3, v3, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 1251
    .local v0, "operatorAlphaLong":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils$7;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "which = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". select "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$700(Lcom/android/internal/telephony/gfit/GfitUtils;Ljava/lang/String;)V

    .line 1253
    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils$7;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendNetworkSelectionModeManual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1256
    return-void
.end method
