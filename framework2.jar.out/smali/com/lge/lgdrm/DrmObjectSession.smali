.class public final Lcom/lge/lgdrm/DrmObjectSession;
.super Ljava/lang/Object;
.source "DrmObjectSession.java"


# static fields
.field private static final PINIT_HND:I = 0x0

.field private static final PINIT_SL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DrmObjSes"


# instance fields
.field bEndError:Z

.field private context:Landroid/content/Context;

.field private downloadAgent:I

.field private errorMsg:Ljava/lang/String;

.field private failReason:I

.field private nativeProcessHandle:I

.field private nativeSLType:I

.field private nativeSession:I

.field nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

.field private redirectURL:Ljava/lang/String;

.field private storedFilename:Ljava/lang/String;

.field private validSession:Z

.field private waitFlag:Z


# direct methods
.method private constructor <init>(ILandroid/content/Context;I)V
    .locals 1
    .param p1, "downloadAgent"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "session"    # I

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput p1, p0, Lcom/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    .line 300
    iput-object p2, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    .line 301
    iput p3, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    .line 304
    return-void
.end method

.method private native nativeDestroySession(II)V
.end method

.method private native nativeGetContentBasicInfo(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;I)I
.end method

.method private native nativeProcessEnd(IILjava/lang/String;)I
.end method

.method private native nativeProcessInit(ILjava/lang/String;Ljava/lang/String;II)[I
.end method

.method private native nativeProcessStatus(I)I
.end method

.method private native nativeProcessUpdate(I[BII)I
.end method

.method private native nativeSetContentSize(IJ)I
.end method

.method static newInstance(ILandroid/content/Context;I)Lcom/lge/lgdrm/DrmObjectSession;
    .locals 2
    .param p0, "downloadAgent"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sesion"    # I

    .prologue
    .line 318
    if-nez p1, :cond_0

    .line 319
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_0
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    const/4 v0, 0x6

    if-le p0, v0, :cond_2

    .line 322
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid appType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_2
    new-instance v0, Lcom/lge/lgdrm/DrmObjectSession;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/lge/lgdrm/DrmObjectSession;-><init>(ILandroid/content/Context;I)V

    return-object v0
.end method

.method private postWaitResult(Ljava/lang/String;IILjava/lang/String;)V
    .locals 13
    .param p1, "resultReceiver"    # Ljava/lang/String;
    .param p2, "result"    # I
    .param p3, "waitType"    # I
    .param p4, "filename"    # Ljava/lang/String;

    .prologue
    .line 953
    const-string v10, "DrmObjSes"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "postWaitResult() : result = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " waitType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " filename = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    if-eqz p1, :cond_0

    if-nez p4, :cond_2

    .line 956
    :cond_0
    const-string v10, "DrmObjSes"

    const-string v11, "postWaitResult() : Invalid parameters"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_1
    :goto_0
    return-void

    .line 961
    :cond_2
    const-string v10, ";"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 962
    .local v1, "component":[Ljava/lang/String;
    array-length v10, v1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 963
    const-string v10, "DrmObjSes"

    const-string v11, "postWaitResult() : Fail to devide package;class"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 967
    :cond_3
    new-instance v2, Lcom/lge/lgdrm/DrmContent;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-direct {v2, v0, v10, v11}, Lcom/lge/lgdrm/DrmContent;-><init>(Ljava/lang/String;II)V

    .line 969
    .local v2, "content":Lcom/lge/lgdrm/DrmContent;
    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0, v10}, Lcom/lge/lgdrm/DrmObjectSession;->nativeGetContentBasicInfo(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_4

    .line 970
    const/4 v2, 0x0

    .line 973
    :cond_4
    if-eqz v2, :cond_1

    .line 978
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p4

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    .line 979
    .local v9, "path":Landroid/net/Uri;
    if-nez v9, :cond_5

    .line 980
    const-string v10, "DrmObjSes"

    const-string v11, "postWaitResult() : Fail to make URI"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 985
    :cond_5
    iget-object v10, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v11, v12, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v10, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 987
    const/4 v10, 0x0

    aget-object v10, v1, v10

    const-string v11, "com.android.providers.downloads"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 990
    .local v3, "downloadProvider":Z
    const/4 v10, 0x2

    move/from16 v0, p3

    if-eq v0, v10, :cond_6

    if-eqz v3, :cond_8

    .line 992
    :cond_6
    new-instance v7, Landroid/content/Intent;

    const-string v10, "com.lge.lgdrm.action.DRM_PROCESS_RESULT"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 993
    .local v7, "intent":Landroid/content/Intent;
    const-string v10, "DrmObjSes"

    const-string v11, "postWaitResult() : Intent (action wait result)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const-string v10, "com.lge.lgdrm.extra.WAIT_RESULT"

    invoke-virtual {v7, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 996
    const-string v10, "com.lge.lgdrm.extra.WAIT_TYPE"

    move/from16 v0, p3

    invoke-virtual {v7, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 997
    const-string v10, "com.lge.lgdrm.extra.FILE_NAME"

    move-object/from16 v0, p4

    invoke-virtual {v7, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v8, v7

    .line 1043
    .end local v7    # "intent":Landroid/content/Intent;
    .local v8, "intent":Landroid/content/Intent;
    :goto_1
    if-nez v3, :cond_7

    const/4 v10, 0x2

    move/from16 v0, p3

    if-ne v0, v10, :cond_b

    .line 1044
    :cond_7
    :try_start_0
    iget-object v10, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    invoke-virtual {v10, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1067
    :catch_0
    move-exception v6

    move-object v7, v8

    .line 1069
    .end local v8    # "intent":Landroid/content/Intent;
    .local v6, "e":Ljava/lang/Exception;
    .restart local v7    # "intent":Landroid/content/Intent;
    :goto_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1000
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_8
    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1001
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v10, "DrmObjSes"

    const-string v11, "postWaitResult() : Intent (action view)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const/4 v4, 0x0

    .line 1006
    .local v4, "drmMime":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v5

    .line 1007
    .local v5, "drmType":I
    and-int/lit8 v10, v5, 0x10

    if-eqz v10, :cond_9

    .line 1008
    const-string v4, "application/vnd.oma.drm.message"

    .line 1018
    :goto_3
    invoke-virtual {v7, v9, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1020
    invoke-virtual {v2}, Lcom/lge/lgdrm/DrmContent;->getContentType()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_0

    .line 1022
    :pswitch_0
    const-string v10, "com.lge.lgdrm.IMAGE_CATEGORY"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object v8, v7

    .line 1023
    .end local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 1009
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    :cond_9
    and-int/lit16 v10, v5, 0x100

    if-eqz v10, :cond_a

    .line 1010
    const-string v4, "application/vnd.oma.drm.content"

    goto :goto_3

    .line 1011
    :cond_a
    and-int/lit16 v10, v5, 0x1000

    if-eqz v10, :cond_1

    .line 1012
    const-string v4, "application/vnd.oma.drm.dcf"

    goto :goto_3

    .line 1025
    :pswitch_1
    const-string v10, "com.lge.lgdrm.AUDIO_CATEGORY"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object v8, v7

    .line 1026
    .end local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 1028
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    :pswitch_2
    const-string v10, "com.lge.lgdrm.VIDEO_CATEGORY"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object v8, v7

    .line 1029
    .end local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 1031
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    :pswitch_3
    const-string v10, "com.lge.lgdrm.GAME_CATEGORY"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object v8, v7

    .line 1032
    .end local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 1049
    .end local v4    # "drmMime":Ljava/lang/String;
    .end local v5    # "drmType":I
    :cond_b
    :try_start_1
    invoke-virtual {v2}, Lcom/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v5

    .line 1050
    .restart local v5    # "drmType":I
    and-int/lit16 v10, v5, 0x100

    if-eqz v10, :cond_c

    .line 1052
    new-instance v7, Landroid/content/Intent;

    const-string v10, "com.lge.lgdrm.action.RIGHTS_RECEIVED"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1053
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    :try_start_2
    const-string v10, "com.lge.lgdrm.extra.FILE_NAME"

    move-object/from16 v0, p4

    invoke-virtual {v7, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1054
    const-string v10, "com.lge.lgdrm.extra.CID"

    const/4 v11, 0x3

    invoke-virtual {v2, v11}, Lcom/lge/lgdrm/DrmContent;->getContentInfo(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1055
    iget-object v10, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    invoke-virtual {v10, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1067
    :catch_1
    move-exception v6

    goto :goto_2

    .line 1059
    .end local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "intent":Landroid/content/Intent;
    :cond_c
    :try_start_3
    iget v10, p0, Lcom/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    const/4 v11, 0x3

    if-eq v10, v11, :cond_1

    iget v10, p0, Lcom/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_1

    .line 1065
    const/high16 v10, 0x10000000

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1066
    iget-object v10, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    invoke-virtual {v10, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v7, v8

    .line 1070
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 1020
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setFailInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "failReason"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "redirectURL"    # Ljava/lang/String;

    .prologue
    .line 857
    iput p1, p0, Lcom/lge/lgdrm/DrmObjectSession;->failReason:I

    .line 858
    iput-object p2, p0, Lcom/lge/lgdrm/DrmObjectSession;->errorMsg:Ljava/lang/String;

    .line 859
    iput-object p3, p0, Lcom/lge/lgdrm/DrmObjectSession;->redirectURL:Ljava/lang/String;

    .line 860
    return-void
.end method

.method private setNextRequest(IIILjava/lang/String;[B)I
    .locals 1
    .param p1, "session"    # I
    .param p2, "requestType"    # I
    .param p3, "httpMethod"    # I
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "data"    # [B

    .prologue
    .line 888
    iput p1, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 891
    new-instance v0, Lcom/lge/lgdrm/DrmDldRequest;

    invoke-direct {v0}, Lcom/lge/lgdrm/DrmDldRequest;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 892
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    if-nez v0, :cond_0

    .line 893
    const/4 v0, -0x1

    .line 901
    :goto_0
    return v0

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput p2, v0, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    .line 897
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput p3, v0, Lcom/lge/lgdrm/DrmDldRequest;->httpMethod:I

    .line 898
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput-object p4, v0, Lcom/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    .line 899
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput-object p5, v0, Lcom/lge/lgdrm/DrmDldRequest;->data:[B

    .line 901
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setStoredFilename(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 868
    iput-object p1, p0, Lcom/lge/lgdrm/DrmObjectSession;->storedFilename:Ljava/lang/String;

    .line 869
    return-void
.end method

.method private startDldClient()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 915
    iget v3, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSLType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v1, 0x3

    .line 917
    .local v1, "downloadAgent":I
    :goto_0
    new-instance v2, Lcom/lge/lgdrm/DrmObjectSession;

    iget-object v3, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    iget v4, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    invoke-direct {v2, v1, v3, v4}, Lcom/lge/lgdrm/DrmObjectSession;-><init>(ILandroid/content/Context;I)V

    .line 923
    .local v2, "session":Lcom/lge/lgdrm/DrmObjectSession;
    new-instance v0, Lcom/lge/lgdrm/DrmDldClient;

    iget-object v3, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iget-object v4, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    invoke-direct {v0, v2, v3, v4}, Lcom/lge/lgdrm/DrmDldClient;-><init>(Lcom/lge/lgdrm/DrmObjectSession;Lcom/lge/lgdrm/DrmDldRequest;Landroid/content/Context;)V

    .line 926
    .local v0, "dldClient":Lcom/lge/lgdrm/DrmDldClient;
    iput v5, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 927
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 930
    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmDldClient;->start()V

    .line 933
    iput-boolean v5, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    .line 935
    return v5

    .line 915
    .end local v0    # "dldClient":Lcom/lge/lgdrm/DrmDldClient;
    .end local v1    # "downloadAgent":I
    .end local v2    # "session":Lcom/lge/lgdrm/DrmObjectSession;
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method


# virtual methods
.method public destroySession(I)V
    .locals 3
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 353
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 354
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid reason"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_1
    if-nez p1, :cond_2

    .line 373
    :goto_0
    return-void

    .line 362
    :cond_2
    iput-boolean v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    .line 363
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    if-eqz v0, :cond_4

    .line 365
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    .line 371
    :cond_3
    :goto_1
    iput v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 372
    iput v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    goto :goto_0

    .line 366
    :cond_4
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    if-eqz v0, :cond_3

    .line 368
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    invoke-direct {p0, v0, p1}, Lcom/lge/lgdrm/DrmObjectSession;->nativeDestroySession(II)V

    goto :goto_1
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 836
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    if-eqz v0, :cond_1

    .line 838
    const-string v0, "DrmObjSes"

    const-string v1, "finalize() : There still exists valid processing handle. Check impl"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 840
    :cond_1
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    if-eqz v0, :cond_0

    .line 842
    const-string v0, "DrmObjSes"

    const-string v1, "finalize() : There still exists valid session. Check impl"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    goto :goto_0
.end method

.method public getFailInfo(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 751
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->bEndError:Z

    if-nez v0, :cond_0

    .line 752
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No error was occurred"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 755
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->errorMsg:Ljava/lang/String;

    .line 758
    :goto_0
    return-object v0

    .line 757
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 758
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->redirectURL:Ljava/lang/String;

    goto :goto_0

    .line 760
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFailReason()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->bEndError:Z

    if-nez v0, :cond_0

    .line 729
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No error was occurred"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :cond_0
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->failReason:I

    return v0
.end method

.method public getNextRequest()Lcom/lge/lgdrm/DrmDldRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 785
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 787
    .local v0, "request":Lcom/lge/lgdrm/DrmDldRequest;
    iget-boolean v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v1, :cond_0

    .line 788
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 790
    :cond_0
    if-nez v0, :cond_1

    .line 791
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not exist next message"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 795
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 796
    return-object v0
.end method

.method public getStoredFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->storedFilename:Ljava/lang/String;

    return-object v0
.end method

.method public isValidSession()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    return v0
.end method

.method public processEnd(ILandroid/content/ComponentName;)I
    .locals 6
    .param p1, "userResponse"    # I
    .param p2, "resultReceiver"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 647
    const/4 v0, 0x0

    .line 649
    .local v0, "intentReceiver":Ljava/lang/String;
    iget v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    if-nez v2, :cond_0

    .line 650
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Init was not called successfully"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 652
    :cond_0
    if-lt p1, v4, :cond_1

    const/4 v2, 0x3

    if-le p1, v2, :cond_2

    .line 653
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid userResponse"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 655
    :cond_2
    iget-boolean v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v2, :cond_3

    if-eq p1, v4, :cond_3

    .line 657
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid userResponse. Only permit PROC_RESP_CANCEL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 659
    :cond_3
    if-eqz p2, :cond_4

    .line 670
    iget-boolean v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->waitFlag:Z

    if-eqz v2, :cond_6

    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 681
    :cond_4
    :goto_0
    iget v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    invoke-direct {p0, v2, p1, v0}, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessEnd(IILjava/lang/String;)I

    move-result v1

    .line 684
    .local v1, "retVal":I
    iput v5, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    .line 685
    iput-boolean v5, p0, Lcom/lge/lgdrm/DrmObjectSession;->waitFlag:Z

    .line 687
    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    .line 688
    iput-boolean v4, p0, Lcom/lge/lgdrm/DrmObjectSession;->bEndError:Z

    .line 699
    :cond_5
    :goto_1
    return v1

    .line 673
    .end local v1    # "retVal":I
    :cond_6
    const-string v2, "DrmObjSes"

    const-string v3, "processEnd() : Invalid resultReceiver. Setup only based on processStatus()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 689
    .restart local v1    # "retVal":I
    :cond_7
    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 690
    iget v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_8

    iget v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 692
    :cond_8
    const/4 v1, 0x0

    .line 693
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmObjectSession;->startDldClient()I

    move-result v2

    if-eqz v2, :cond_5

    .line 694
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public processInit(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p1, "drmMimeType"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "attribute"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 424
    const/4 v6, 0x0

    .line 426
    .local v6, "nativeHnds":[I
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_0
    iget v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    iget v5, p0, Lcom/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessInit(ILjava/lang/String;Ljava/lang/String;II)[I

    move-result-object v6

    .line 431
    if-eqz v6, :cond_1

    aget v0, v6, v7

    if-eqz v0, :cond_1

    .line 436
    iput v7, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 439
    aget v0, v6, v7

    iput v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    .line 440
    const/4 v0, 0x1

    aget v0, v6, v0

    iput v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSLType:I

    move v0, v7

    .line 444
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public processStatus()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 552
    iget-boolean v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v1, :cond_0

    .line 553
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 555
    :cond_0
    iget v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    if-nez v1, :cond_1

    .line 556
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Init was not called successfully"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 559
    :cond_1
    iget v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    invoke-direct {p0, v1}, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessStatus(I)I

    move-result v0

    .line 560
    .local v0, "retVal":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 561
    iput-boolean v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    .line 564
    :cond_2
    if-eq v0, v3, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 565
    :cond_3
    iput-boolean v3, p0, Lcom/lge/lgdrm/DrmObjectSession;->waitFlag:Z

    .line 570
    :goto_0
    return v0

    .line 567
    :cond_4
    iput-boolean v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->waitFlag:Z

    goto :goto_0
.end method

.method public processUpdate([BI)I
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 469
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/lge/lgdrm/DrmObjectSession;->processUpdate([BII)I

    move-result v0

    return v0
.end method

.method public processUpdate([BII)I
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 498
    iget-boolean v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v1, :cond_0

    .line 499
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 501
    :cond_0
    iget v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    if-nez v1, :cond_1

    .line 502
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Init was not called successfully"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 504
    :cond_1
    if-nez p1, :cond_2

    .line 505
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter buf is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 507
    :cond_2
    if-ltz p3, :cond_3

    array-length v1, p1

    if-le p3, v1, :cond_4

    .line 508
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 511
    :cond_4
    iget v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessUpdate(I[BII)I

    move-result v0

    .line 512
    .local v0, "retVal":I
    if-eqz v0, :cond_5

    .line 513
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    .line 516
    :cond_5
    return v0
.end method

.method public setContentSize(J)I
    .locals 2
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 815
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v0, :cond_0

    .line 816
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 818
    :cond_0
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    if-nez v0, :cond_1

    .line 819
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Init was not called successfully"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    .line 822
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_2
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSLType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 826
    const/4 v0, 0x0

    .line 830
    :goto_0
    return v0

    :cond_3
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/lge/lgdrm/DrmObjectSession;->nativeSetContentSize(IJ)I

    move-result v0

    goto :goto_0
.end method
