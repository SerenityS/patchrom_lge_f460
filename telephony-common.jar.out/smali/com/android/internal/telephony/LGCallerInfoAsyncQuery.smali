.class public Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;
.super Ljava/lang/Object;
.source "LGCallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$1;,
        Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;,
        Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$QueryPoolException;,
        Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;,
        Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final ENABLE_UNKNOWN_NUMBER_GEO_DESCRIPTION:Z = true

.field private static final EVENT_ADD_LISTENER:I = 0x2

.field private static final EVENT_EMERGENCY_NUMBER:I = 0x4

.field private static final EVENT_END_OF_QUEUE:I = 0x3

.field private static final EVENT_N11_NUMBER:I = 0x6

.field private static final EVENT_NEW_QUERY:I = 0x1

.field private static final EVENT_VOICEMAIL_NUMBER:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "LGCallerInfoAsyncQuery"

.field public static inputNumber:Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->inputNumber:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->release()V

    return-void
.end method

.method private allocate(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;

    .prologue
    .line 513
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 514
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;Landroid/content/Context;Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 517
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$302(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    .line 518
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v0, p2}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$402(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    .line 519
    return-void
.end method

.method private release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 525
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$302(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$402(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$502(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/internal/telephony/CallerInfoEx;)Lcom/android/internal/telephony/CallerInfoEx;

    .line 528
    iput-object v1, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 529
    return-void
.end method

.method private static sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 532
    if-eqz p0, :cond_1

    .line 533
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, "uriString":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 535
    .local v0, "indexOfLastSlash":I
    if-lez v0, :cond_0

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/xxxxxxx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 541
    .end local v0    # "indexOfLastSlash":I
    .end local v1    # "uriString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static startQuery(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;
    .locals 9
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;
    .param p3, "listener"    # Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 348
    new-instance v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;

    invoke-direct {v8}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;-><init>()V

    .line 349
    .local v8, "c":Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;
    invoke-direct {v8, p1, p2}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    .line 354
    new-instance v2, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$1;)V

    .line 355
    .local v2, "cw":Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;
    iput-object p3, v2, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 356
    iput-object p4, v2, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 357
    const/4 v0, 0x1

    iput v0, v2, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 359
    iget-object v0, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move v1, p0

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-object v8
.end method

.method public static startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;
    .locals 6
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 378
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "num_len":I
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 379
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->startQueryEx(ILandroid/content/Context;Ljava/lang/String;ILcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;

    move-result-object v0

    return-object v0
.end method

.method public static startQueryEx(ILandroid/content/Context;Ljava/lang/String;ILcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;
    .locals 12
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "num_len"    # I
    .param p4, "listener"    # Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p5, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 397
    const/4 v1, 0x0

    const-string v2, "LGE_PHONE_NUMBER_QUERY"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    sput-object p2, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->inputNumber:Ljava/lang/String;

    .line 402
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    .line 403
    .local v10, "len":I
    const/4 v11, 0x0

    .line 404
    .local v11, "modifyNumber":Ljava/lang/String;
    if-lt v10, p3, :cond_1

    .line 405
    sub-int v1, v10, p3

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 417
    :goto_0
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 422
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 438
    .local v4, "contactRef":Landroid/net/Uri;
    const-string v6, "upper(data1)=? AND mimetype=\'vnd.android.cursor.item/sip_address\'"

    .line 441
    .local v6, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 460
    .local v7, "selectionArgs":[Ljava/lang/String;
    :goto_1
    new-instance v9, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;

    invoke-direct {v9}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;-><init>()V

    .line 461
    .local v9, "c":Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;
    invoke-direct {v9, p1, v4}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    .line 464
    new-instance v3, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$1;)V

    .line 465
    .local v3, "cw":Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;
    move-object/from16 v0, p4

    iput-object v0, v3, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 466
    move-object/from16 v0, p5

    iput-object v0, v3, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 467
    iput-object p2, v3, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    .line 470
    invoke-static {p2, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 471
    const/4 v1, 0x4

    iput v1, v3, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 480
    :goto_2
    iget-object v1, v9, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move v2, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return-object v9

    .line 408
    .end local v3    # "cw":Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;
    .end local v4    # "contactRef":Landroid/net/Uri;
    .end local v6    # "selection":Ljava/lang/String;
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    .end local v9    # "c":Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;
    :cond_1
    move-object v11, p2

    goto :goto_0

    .line 445
    :cond_2
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 446
    .restart local v4    # "contactRef":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 447
    .restart local v6    # "selection":Ljava/lang/String;
    const/4 v7, 0x0

    .restart local v7    # "selectionArgs":[Ljava/lang/String;
    goto :goto_1

    .line 472
    .restart local v3    # "cw":Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;
    .restart local v9    # "c":Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;
    :cond_3
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 473
    const/4 v1, 0x5

    iput v1, v3, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_2

    .line 474
    :cond_4
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isN11orSpecialNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 475
    const/4 v1, 0x6

    iput v1, v3, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_2

    .line 477
    :cond_5
    const/4 v1, 0x1

    iput v1, v3, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_2
.end method


# virtual methods
.method public addQueryListener(ILcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "listener"    # Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p3, "cookie"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 500
    new-instance v2, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$1;)V

    .line 501
    .local v2, "cw":Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;
    iput-object p2, v2, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 502
    iput-object p3, v2, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 503
    const/4 v0, 0x2

    iput v0, v2, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 505
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    return-void
.end method
