.class Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "LGCallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallerInfoAsyncQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;
    }
.end annotation


# instance fields
.field private mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

.field private mQueryContext:Landroid/content/Context;

.field private mQueryUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;

    .line 194
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 195
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;Landroid/content/Context;Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$1;

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/internal/telephony/CallerInfoEx;)Lcom/android/internal/telephony/CallerInfoEx;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
    .param p1, "x1"    # Lcom/android/internal/telephony/CallerInfoEx;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    return-object p1
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 199
    new-instance v0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;-><init>(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x0

    .line 217
    move-object v8, p2

    check-cast v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;

    .line 218
    .local v8, "cw":Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;
    if-nez v8, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget v0, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->event:I

    if-ne v0, v6, :cond_2

    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;

    # invokes: Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->release()V
    invoke-static {v0}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->access$000(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;)V

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    if-nez v0, :cond_6

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    if-nez v0, :cond_4

    .line 235
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri, or LGCallerInfoAsyncQuery already released."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_4
    const-string v0, "CTC"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->event:I

    if-ne v0, v1, :cond_7

    .line 248
    new-instance v0, Lcom/android/internal/telephony/CallerInfoEx;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfoEx;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v4, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/CallerInfoEx;->markAsEmergency(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    .line 320
    :cond_5
    :goto_1
    new-instance v2, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$1;)V

    .line 321
    .local v2, "endMarker":Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;
    iput v6, v2, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->event:I

    move-object v0, p0

    move v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 322
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .end local v2    # "endMarker":Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;
    :cond_6
    iget-object v0, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;

    iget-object v1, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    invoke-interface {v0, p1, v1, v3}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfoEx;)V

    goto :goto_0

    .line 252
    :cond_7
    iget v0, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->event:I

    if-ne v0, v1, :cond_8

    .line 255
    new-instance v0, Lcom/android/internal/telephony/CallerInfoEx;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfoEx;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallerInfoEx;->markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    goto :goto_1

    .line 256
    :cond_8
    iget v0, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    .line 257
    new-instance v0, Lcom/android/internal/telephony/CallerInfoEx;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfoEx;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallerInfoEx;->markAsVoiceMail()Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    goto :goto_1

    .line 258
    :cond_9
    iget v0, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    .line 259
    new-instance v0, Lcom/android/internal/telephony/CallerInfoEx;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfoEx;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v4, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/CallerInfoEx;->markAsN11OrSpecial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    goto :goto_1

    .line 262
    :cond_a
    const-string v0, "LGE_PHONE_NUMBER_QUERY"

    invoke-static {v3, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->inputNumber:Ljava/lang/String;

    invoke-static {v0, v1, p3, v4}, Lcom/android/internal/telephony/CallerInfoEx;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    .line 264
    sput-object v3, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->inputNumber:Ljava/lang/String;

    .line 271
    :goto_2
    const-string v0, "Korea_RAD"

    invoke-static {v3, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    iget-object v1, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfoEx;->contactNumber:Ljava/lang/String;

    .line 279
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v1, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    invoke-static {v0, v1, v4}, Lcom/android/internal/telephony/CallerInfoEx;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoEx;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v9

    .line 281
    .local v9, "newCallerInfo":Lcom/android/internal/telephony/CallerInfoEx;
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    if-eq v9, v0, :cond_c

    .line 282
    iput-object v9, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    .line 300
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfoEx;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    iget-object v1, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v4, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/CallerInfoEx;->updateGeoDescription(Landroid/content/Context;Ljava/lang/String;)V

    .line 310
    :cond_d
    iget-object v0, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    iget-object v1, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfoEx;->normalizedNumber:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/telephony/CallerInfoEx;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_1

    .line 266
    .end local v9    # "newCallerInfo":Lcom/android/internal/telephony/CallerInfoEx;
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    invoke-static {v0, v1, p3}, Lcom/android/internal/telephony/CallerInfoEx;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    goto :goto_2
.end method
