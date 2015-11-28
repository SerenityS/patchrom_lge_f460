.class Lcom/android/internal/telephony/cdma/CDMAPhone$2;
.super Landroid/content/BroadcastReceiver;
.source "CDMAPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CDMAPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 411
    invoke-static {p1, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->updateProfile(Landroid/content/Context;Landroid/content/Intent;)V

    .line 412
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, "stateExtra":Ljava/lang/String;
    const-string v2, "CDMAPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CDMAPhone] SimStateReceiver - stateExtra: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-string v2, "LOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    const-string v2, "CDMAPhone"

    const-string v3, "[CDMAPhone] SimStateReceiver ICC LOADED"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_0
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    const-string v2, "CDMAPhone"

    const-string v3, "[CDMAPhone] SimStateReceiver - ICC READY"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v2, "seperate_processing_sms_uicc"

    invoke-static {v5, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 426
    # getter for: Lcom/android/internal/telephony/cdma/CDMAPhone;->isUSimSmsDeleted:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$000()Z

    move-result v2

    if-nez v2, :cond_1

    .line 427
    const/4 v2, 0x1

    # setter for: Lcom/android/internal/telephony/cdma/CDMAPhone;->isUSimSmsDeleted:Z
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$102(Z)Z

    .line 429
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    # getter for: Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$200(Lcom/android/internal/telephony/cdma/CDMAPhone;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "uicc_csim"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 435
    :try_start_0
    const-string v2, "CDMAPhone"

    const-string v3, "[CDMAPhone] SimStateReceiver - Delete RuimRecords.ICC_URI"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    # getter for: Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$300(Lcom/android/internal/telephony/cdma/CDMAPhone;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    # getter for: Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$400(Lcom/android/internal/telephony/cdma/CDMAPhone;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/RuimRecords;->ICC_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 444
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    # getter for: Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$500(Lcom/android/internal/telephony/cdma/CDMAPhone;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    # getter for: Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$600(Lcom/android/internal/telephony/cdma/CDMAPhone;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/RuimRecords;->SMS_CONCAT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 458
    :cond_1
    :goto_1
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 460
    const-string v2, "CDMAPhone"

    const-string v3, "[CDMAPhone] SimStateReceiver - ICC ABSENT"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    # getter for: Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$700(Lcom/android/internal/telephony/cdma/CDMAPhone;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "seperate_processing_sms_uicc"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 468
    :try_start_3
    const-string v2, "CDMAPhone"

    const-string v3, "[CDMAPhone] SimStateReceiver - Delete RuimRecords.ICC_URI"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 471
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    # getter for: Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$800(Lcom/android/internal/telephony/cdma/CDMAPhone;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    # getter for: Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$900(Lcom/android/internal/telephony/cdma/CDMAPhone;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/RuimRecords;->ICC_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 478
    :goto_2
    :try_start_5
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    # getter for: Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$1000(Lcom/android/internal/telephony/cdma/CDMAPhone;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    # getter for: Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$1100(Lcom/android/internal/telephony/cdma/CDMAPhone;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/RuimRecords;->SMS_CONCAT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 488
    :cond_2
    :goto_3
    return-void

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v2, "CDMAPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TEL-SMS] sql exception -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 483
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v0

    .line 484
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v2, "CDMAPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TEL-SMS] sql exception -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 479
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v2

    goto :goto_3

    .line 472
    :catch_3
    move-exception v2

    goto :goto_2

    .line 445
    :catch_4
    move-exception v2

    goto/16 :goto_1

    .line 439
    :catch_5
    move-exception v2

    goto/16 :goto_0
.end method
