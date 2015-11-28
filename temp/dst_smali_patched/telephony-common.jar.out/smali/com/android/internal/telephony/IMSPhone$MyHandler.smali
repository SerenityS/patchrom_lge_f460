.class Lcom/android/internal/telephony/IMSPhone$MyHandler;
.super Landroid/os/Handler;
.source "IMSPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IMSPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IMSPhone;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/IMSPhone;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/IMSPhone;Lcom/android/internal/telephony/IMSPhone$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/IMSPhone;
    .param p2, "x1"    # Lcom/android/internal/telephony/IMSPhone$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IMSPhone$MyHandler;-><init>(Lcom/android/internal/telephony/IMSPhone;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    move-object v0, v8

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "LGIMS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage :: event ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_2

    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "LGIMS"

    const-string v9, "ar is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->getSysMonitor()Lcom/android/internal/telephony/ISysMonitor;

    move-result-object v6

    .local v6, "sysMonitor":Lcom/android/internal/telephony/ISysMonitor;
    if-nez v6, :cond_3

    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "LGIMS"

    const-string v9, "SysMonitor is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_7

    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "LGIMS"

    const-string v9, "ar.exception is not null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0x65

    if-eq v8, v9, :cond_5

    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0x66

    if-ne v8, v9, :cond_1

    :cond_5
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .local v4, "fileId":Ljava/lang/Integer;
    const/4 v8, 0x3

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    const-string v11, ""

    invoke-interface {v6, v8, v9, v10, v11}, Lcom/android/internal/telephony/ISysMonitor;->onPhoneStateChanged(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "LGIMS"

    const-string v9, "Unexpected remote exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/IMSPhone;->handleRemoteException()V

    goto :goto_0

    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "fileId":Ljava/lang/Integer;
    :cond_7
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "LGIMS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown event ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "LGIMS"

    const-string v9, "RIL_RESPONSE received"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v8, :cond_a

    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "LGIMS"

    const-string v9, "ar.result is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .restart local v4    # "fileId":Ljava/lang/Integer;
    const/4 v8, 0x3

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    const-string v11, ""

    invoke-interface {v6, v8, v9, v10, v11}, Lcom/android/internal/telephony/ISysMonitor;->onPhoneStateChanged(IIILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    .restart local v2    # "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "LGIMS"

    const-string v9, "Unexpected remote exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    iget-object v8, p0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/IMSPhone;->handleRemoteException()V

    goto/16 :goto_0

    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "fileId":Ljava/lang/Integer;
    :cond_a
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .restart local v4    # "fileId":Ljava/lang/Integer;
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    move-object v3, v8

    check-cast v3, Ljava/util/ArrayList;

    .local v3, "efRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-string v1, ""

    .local v1, "data":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_c

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    .local v7, "tmp":Ljava/lang/String;
    if-eqz v7, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Z"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v7    # "tmp":Ljava/lang/String;
    :cond_c
    const/4 v8, 0x3

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    invoke-interface {v6, v8, v9, v10, v1}, Lcom/android/internal/telephony/ISysMonitor;->onPhoneStateChanged(IIILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    .restart local v2    # "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_d

    const-string v8, "LGIMS"

    const-string v9, "Unexpected remote exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    iget-object v8, p0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/IMSPhone;->handleRemoteException()V

    goto/16 :goto_0

    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "efRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v4    # "fileId":Ljava/lang/Integer;
    .end local v5    # "i":I
    :pswitch_2
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v8, :cond_10

    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_e

    const-string v8, "LGIMS"

    const-string v9, "ar.result is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .restart local v4    # "fileId":Ljava/lang/Integer;
    const/4 v8, 0x3

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    const-string v11, ""

    invoke-interface {v6, v8, v9, v10, v11}, Lcom/android/internal/telephony/ISysMonitor;->onPhoneStateChanged(IIILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v2

    .restart local v2    # "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v8, "LGIMS"

    const-string v9, "Unexpected remote exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    iget-object v8, p0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/IMSPhone;->handleRemoteException()V

    goto/16 :goto_0

    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "fileId":Ljava/lang/Integer;
    :cond_10
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .restart local v4    # "fileId":Ljava/lang/Integer;
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    check-cast v8, [B

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "data":Ljava/lang/String;
    const/4 v8, 0x3

    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    invoke-interface {v6, v8, v9, v10, v1}, Lcom/android/internal/telephony/ISysMonitor;->onPhoneStateChanged(IIILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v2

    .restart local v2    # "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_11

    const-string v8, "LGIMS"

    const-string v9, "Unexpected remote exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    iget-object v8, p0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/IMSPhone;->handleRemoteException()V

    goto/16 :goto_0

    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "fileId":Ljava/lang/Integer;
    :pswitch_3
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "LGIMS"

    const-string v9, "RIL_IMS_STAUS_SET_DONE_FOR_DAN received"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
