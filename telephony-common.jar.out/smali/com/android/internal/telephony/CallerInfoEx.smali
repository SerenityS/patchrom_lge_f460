.class public Lcom/android/internal/telephony/CallerInfoEx;
.super Lcom/android/internal/telephony/CallerInfo;
.source "CallerInfoEx.java"


# static fields
.field static final CUSTOM_LED_TYPE:Ljava/lang/String; = "custom_led_type"

.field public static final EMPTY_NUMBER:Ljava/lang/String; = "-4"

.field private static final TAG:Ljava/lang/String; = "CallerInfoEx"

.field private static final VDBG:Z


# instance fields
.field public cdnipNumber:Ljava/lang/String;

.field private contactExistsCount:I

.field public contactNumber:Ljava/lang/String;

.field public custom_led_type:I

.field public displayNumber:Ljava/lang/String;

.field public distinctiveVib:I

.field public eventDate:Ljava/lang/String;

.field public lookupKey:Ljava/lang/String;

.field private mIsEmergency:Z

.field private mIsVoiceMail:Z

.field public mMapUserData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public originalNumber:Ljava/lang/String;

.field public phonetic_name:Ljava/lang/String;

.field public socialStatus:Ljava/lang/String;

.field public socialStatusIconRes:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "CallerInfoEx"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CallerInfoEx;->VDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->lookupKey:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->contactNumber:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->displayNumber:Ljava/lang/String;

    .line 155
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallerInfoEx;->mIsEmergency:Z

    .line 156
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallerInfoEx;->mIsVoiceMail:Z

    .line 157
    return-void
.end method

.method static doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoEx;)Lcom/android/internal/telephony/CallerInfoEx;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "previousResult"    # Lcom/android/internal/telephony/CallerInfoEx;

    .prologue
    .line 545
    iget-boolean v1, p2, Lcom/android/internal/telephony/CallerInfoEx;->contactExists:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "username":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/CallerInfoEx;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object p2

    .line 554
    .end local v0    # "username":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfoEx;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 461
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/CallerInfoEx;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfoEx;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/CallerInfoEx;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoEx;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "inputNumber"    # Ljava/lang/String;

    .prologue
    .line 173
    new-instance v14, Lcom/android/internal/telephony/CallerInfoEx;

    invoke-direct {v14}, Lcom/android/internal/telephony/CallerInfoEx;-><init>()V

    .line 174
    .local v14, "info":Lcom/android/internal/telephony/CallerInfoEx;
    const/4 v2, 0x0

    iput v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->photoResource:I

    .line 175
    const/4 v2, 0x0

    iput-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->phoneLabel:Ljava/lang/String;

    .line 176
    const/4 v2, 0x0

    iput v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->numberType:I

    .line 177
    const/4 v2, 0x0

    iput-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->numberLabel:Ljava/lang/String;

    .line 178
    const/4 v2, 0x0

    iput-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 179
    const/4 v2, 0x0

    iput-boolean v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->isCachedPhotoCurrent:Z

    .line 180
    const/4 v2, 0x0

    iput-boolean v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->contactExists:Z

    .line 182
    const-string v2, ""

    iput-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->socialStatus:Ljava/lang/String;

    .line 183
    const-string v2, ""

    iput-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->eventDate:Ljava/lang/String;

    .line 184
    const/4 v2, 0x0

    iput-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->socialStatusIconRes:Landroid/graphics/drawable/Drawable;

    .line 187
    const/4 v2, 0x0

    invoke-direct {v14, v2}, Lcom/android/internal/telephony/CallerInfoEx;->setContactExistsCount(I)V

    .line 189
    const/4 v2, 0x0

    iput v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->distinctiveVib:I

    .line 191
    new-instance v13, Lcom/android/internal/telephony/CallerInfoEx;

    invoke-direct {v13}, Lcom/android/internal/telephony/CallerInfoEx;-><init>()V

    .line 192
    .local v13, "firstCallerInfo":Lcom/android/internal/telephony/CallerInfoEx;
    const/4 v2, 0x0

    iput v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->photoResource:I

    .line 193
    const/4 v2, 0x0

    iput-object v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->phoneLabel:Ljava/lang/String;

    .line 194
    const/4 v2, 0x0

    iput v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->numberType:I

    .line 195
    const/4 v2, 0x0

    iput-object v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->numberLabel:Ljava/lang/String;

    .line 196
    const/4 v2, 0x0

    iput-object v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 197
    const/4 v2, 0x0

    iput-boolean v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->isCachedPhotoCurrent:Z

    .line 198
    const/4 v2, 0x0

    iput-boolean v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->contactExists:Z

    .line 199
    const-string v2, ""

    iput-object v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->socialStatus:Ljava/lang/String;

    .line 200
    const-string v2, ""

    iput-object v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->eventDate:Ljava/lang/String;

    .line 201
    const/4 v2, 0x0

    iput-object v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->socialStatusIconRes:Landroid/graphics/drawable/Drawable;

    .line 203
    const/4 v2, 0x0

    invoke-direct {v13, v2}, Lcom/android/internal/telephony/CallerInfoEx;->setContactExistsCount(I)V

    .line 205
    const/4 v2, 0x0

    iput v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->distinctiveVib:I

    .line 207
    const/4 v15, 0x0

    .line 208
    .local v15, "isExactlyMatch":Z
    const/4 v9, 0x0

    .line 210
    .local v9, "compareNumber":Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/telephony/CallerInfoEx;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "CallerInfoEx"

    const-string v3, "getCallerInfo() based on cursor..."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    if-eqz p2, :cond_3

    .line 214
    const/16 v16, 0x0

    .line 216
    .local v16, "isFirst":Z
    const-string v2, "true"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_lock"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 218
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 221
    .local v8, "columnIndex":I
    const/4 v2, -0x1

    if-eq v8, v2, :cond_1

    .line 222
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    .line 226
    :cond_1
    const-string v2, "normalized_number"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 227
    const/4 v2, -0x1

    if-eq v8, v2, :cond_2

    .line 228
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->normalizedNumber:Ljava/lang/String;

    .line 431
    .end local v8    # "columnIndex":I
    :cond_2
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v14, v2}, Lcom/android/internal/telephony/CallerInfoEx;->setContactExistsCount(I)V

    .line 432
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v13, v2}, Lcom/android/internal/telephony/CallerInfoEx;->setContactExistsCount(I)V

    .line 434
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 436
    .end local v16    # "isFirst":Z
    :cond_3
    if-nez v15, :cond_20

    .line 437
    const/4 v2, 0x0

    iput-boolean v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->needUpdate:Z

    .line 438
    iget-object v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/CallerInfoEx;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->name:Ljava/lang/String;

    .line 439
    move-object/from16 v0, p1

    iput-object v0, v13, Lcom/android/internal/telephony/CallerInfoEx;->contactRefUri:Landroid/net/Uri;

    .line 447
    .end local v13    # "firstCallerInfo":Lcom/android/internal/telephony/CallerInfoEx;
    :goto_1
    return-object v13

    .line 233
    .restart local v13    # "firstCallerInfo":Lcom/android/internal/telephony/CallerInfoEx;
    .restart local v16    # "isFirst":Z
    :cond_4
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 238
    :cond_5
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->isFirst()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 239
    const/16 v16, 0x1

    .line 245
    :goto_2
    const-string v2, "display_name"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 246
    .restart local v8    # "columnIndex":I
    const/4 v2, -0x1

    if-eq v8, v2, :cond_6

    .line 247
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->name:Ljava/lang/String;

    .line 251
    :cond_6
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 252
    const/4 v2, -0x1

    if-eq v8, v2, :cond_7

    .line 253
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    .line 257
    :cond_7
    const-string v2, "normalized_number"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 258
    const/4 v2, -0x1

    if-eq v8, v2, :cond_8

    .line 259
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->normalizedNumber:Ljava/lang/String;

    .line 263
    :cond_8
    const-string v2, "label"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 264
    const/4 v2, -0x1

    if-eq v8, v2, :cond_9

    .line 265
    const-string v2, "type"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 266
    .local v20, "typeColumnIndex":I
    const/4 v2, -0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_9

    .line 267
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->numberType:I

    .line 268
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->numberLabel:Ljava/lang/String;

    .line 269
    iget v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->numberType:I

    iget-object v3, v14, Lcom/android/internal/telephony/CallerInfoEx;->numberLabel:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->phoneLabel:Ljava/lang/String;

    .line 276
    .end local v20    # "typeColumnIndex":I
    :cond_9
    invoke-static/range {p1 .. p2}, Lcom/android/internal/telephony/CallerInfoEx;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v8

    .line 277
    const/4 v2, -0x1

    if-eq v8, v2, :cond_13

    .line 278
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->person_id:J

    .line 279
    sget-boolean v2, Lcom/android/internal/telephony/CallerInfoEx;->VDBG:Z

    if-eqz v2, :cond_a

    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> got info.person_id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v0, v14, Lcom/android/internal/telephony/CallerInfoEx;->person_id:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_a
    :goto_3
    const-string v2, "custom_ringtone"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 291
    const/4 v2, -0x1

    if-eq v8, v2, :cond_b

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 292
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->contactRingtoneUri:Landroid/net/Uri;

    .line 297
    :cond_b
    const/16 v17, 0x0

    .line 298
    .local v17, "path":Ljava/lang/String;
    iget-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v2, :cond_c

    .line 299
    iget-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->contactRingtoneUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/CallerInfoEx;->getFilepathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v17

    .line 302
    :cond_c
    sget-boolean v2, Lcom/android/internal/telephony/CallerInfoEx;->VDBG:Z

    if-eqz v2, :cond_d

    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1st RingTone :: contactRingtoneUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Lcom/android/internal/telephony/CallerInfoEx;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_d
    if-nez v17, :cond_e

    .line 312
    const-string v2, "group_custom_ringtone"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 313
    const/4 v2, -0x1

    if-eq v8, v2, :cond_14

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 314
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->contactRingtoneUri:Landroid/net/Uri;

    .line 315
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "group_custom_ringtone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Lcom/android/internal/telephony/CallerInfoEx;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_e
    :goto_4
    const-string v2, "custom_vibration_type"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 326
    const/4 v2, -0x1

    if-eq v8, v2, :cond_15

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_15

    .line 327
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->distinctiveVib:I

    .line 328
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> got info.distinctiveVib: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v14, Lcom/android/internal/telephony/CallerInfoEx;->distinctiveVib:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_5
    const-string v2, "custom_led_type"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 343
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> Indicate CUSTOM_LED_TYPE columnIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v2, -0x1

    if-eq v8, v2, :cond_f

    .line 346
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->custom_led_type:I

    .line 347
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> Indicate CUSTOM_LED_TYPE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v14, Lcom/android/internal/telephony/CallerInfoEx;->custom_led_type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_f
    const-string v2, "send_to_voicemail"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 354
    const/4 v2, -0x1

    if-eq v8, v2, :cond_17

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    const/4 v2, 0x1

    :goto_6
    iput-boolean v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->shouldSendToVoicemail:Z

    .line 356
    const/4 v2, 0x1

    iput-boolean v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->contactExists:Z

    .line 358
    const-string v2, "lookup"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 359
    const/4 v2, -0x1

    if-eq v8, v2, :cond_10

    .line 360
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->lookupKey:Ljava/lang/String;

    .line 364
    :cond_10
    const-string v2, "KDDI"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 365
    invoke-static/range {p1 .. p2}, Lcom/android/internal/telephony/CallerInfoEx;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v8

    .line 366
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 367
    .local v18, "raw_id":J
    const/4 v2, -0x1

    if-eq v8, v2, :cond_19

    .line 368
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 369
    .local v10, "contact_id":J
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> contact_id !!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mimetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 371
    .local v5, "whereName":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "vnd.android.cursor.item/name"

    aput-object v3, v6, v2

    .line 372
    .local v6, "whereNameParams":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 373
    .local v12, "cr":Landroid/database/Cursor;
    if-eqz v12, :cond_19

    .line 374
    :cond_11
    :goto_7
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 375
    const-string v2, "phonetic_name"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 376
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> columnIndex !!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v2, -0x1

    if-eq v8, v2, :cond_11

    .line 378
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->phonetic_name:Ljava/lang/String;

    goto :goto_7

    .line 241
    .end local v5    # "whereName":Ljava/lang/String;
    .end local v6    # "whereNameParams":[Ljava/lang/String;
    .end local v8    # "columnIndex":I
    .end local v10    # "contact_id":J
    .end local v12    # "cr":Landroid/database/Cursor;
    .end local v17    # "path":Ljava/lang/String;
    .end local v18    # "raw_id":J
    :cond_12
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 282
    .restart local v8    # "columnIndex":I
    :cond_13
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find person_id column for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 317
    .restart local v17    # "path":Ljava/lang/String;
    :cond_14
    const/4 v2, 0x0

    iput-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->contactRingtoneUri:Landroid/net/Uri;

    goto/16 :goto_4

    .line 330
    :cond_15
    const-string v2, "group_custom_vibrator"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 331
    const/4 v2, -0x1

    if-eq v8, v2, :cond_16

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_16

    .line 332
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->distinctiveVib:I

    .line 333
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> (group : got info.distinctiveVib: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v14, Lcom/android/internal/telephony/CallerInfoEx;->distinctiveVib:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 335
    :cond_16
    const/4 v2, 0x0

    iput v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->distinctiveVib:I

    .line 336
    const-string v2, "CallerInfoEx"

    const-string v3, "==> (info.distinctiveVib : default value 0"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 354
    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 381
    .restart local v5    # "whereName":Ljava/lang/String;
    .restart local v6    # "whereNameParams":[Ljava/lang/String;
    .restart local v10    # "contact_id":J
    .restart local v12    # "cr":Landroid/database/Cursor;
    .restart local v18    # "raw_id":J
    :cond_18
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 384
    .end local v5    # "whereName":Ljava/lang/String;
    .end local v6    # "whereNameParams":[Ljava/lang/String;
    .end local v10    # "contact_id":J
    .end local v12    # "cr":Landroid/database/Cursor;
    :cond_19
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> !! Indicate PHONETIC_NAME : !!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Lcom/android/internal/telephony/CallerInfoEx;->phonetic_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .end local v18    # "raw_id":J
    :cond_1a
    iget-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 388
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isLogBlocked(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 389
    const-string v2, "CallerInfoEx"

    const-string v3, "getCallerInfo() LGE phone number query - compareNumber (remove hyphen) : "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :goto_8
    if-eqz p3, :cond_1b

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 394
    :cond_1b
    const/4 v15, 0x1

    .line 395
    goto/16 :goto_0

    .line 391
    :cond_1c
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallerInfo() LGE phone number query - compareNumber (remove hyphen) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 397
    :cond_1d
    const/4 v15, 0x0

    .line 398
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isLogBlocked(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 399
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallerInfo()LGE phone number query - don\'t exactly mateched, isExactlyMatch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_9
    if-eqz v16, :cond_1e

    .line 405
    const-string v2, "CallerInfoEx"

    const-string v3, "getCallerInfo() LGE phone number query - save first CallserInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->name:Ljava/lang/String;

    iput-object v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->name:Ljava/lang/String;

    .line 407
    iget-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    iput-object v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    .line 408
    iget-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->normalizedNumber:Ljava/lang/String;

    iput-object v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->normalizedNumber:Ljava/lang/String;

    .line 409
    iget v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->numberType:I

    iput v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->numberType:I

    .line 410
    iget-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->numberLabel:Ljava/lang/String;

    iput-object v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->numberLabel:Ljava/lang/String;

    .line 411
    iget-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->phoneLabel:Ljava/lang/String;

    iput-object v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->phoneLabel:Ljava/lang/String;

    .line 412
    iget-wide v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->person_id:J

    iput-wide v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->person_id:J

    .line 413
    iget-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->contactRingtoneUri:Landroid/net/Uri;

    iput-object v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->contactRingtoneUri:Landroid/net/Uri;

    .line 414
    iget v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->distinctiveVib:I

    iput v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->distinctiveVib:I

    .line 417
    iget v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->custom_led_type:I

    iput v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->custom_led_type:I

    .line 419
    iget-boolean v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->shouldSendToVoicemail:Z

    iput-boolean v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->shouldSendToVoicemail:Z

    .line 420
    iget-boolean v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->contactExists:Z

    iput-boolean v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->contactExists:Z

    .line 421
    iget-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->lookupKey:Ljava/lang/String;

    iput-object v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->lookupKey:Ljava/lang/String;

    .line 423
    iget-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->phonetic_name:Ljava/lang/String;

    iput-object v2, v13, Lcom/android/internal/telephony/CallerInfoEx;->phonetic_name:Ljava/lang/String;

    .line 428
    :cond_1e
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    .line 401
    :cond_1f
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallerInfo()LGE phone number query - don\'t exactly mateched, inputNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", info.phoneNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isExactlyMatch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 443
    .end local v8    # "columnIndex":I
    .end local v16    # "isFirst":Z
    .end local v17    # "path":Ljava/lang/String;
    :cond_20
    const/4 v2, 0x0

    iput-boolean v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->needUpdate:Z

    .line 444
    iget-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/CallerInfoEx;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/android/internal/telephony/CallerInfoEx;->name:Ljava/lang/String;

    .line 445
    move-object/from16 v0, p1

    iput-object v0, v14, Lcom/android/internal/telephony/CallerInfoEx;->contactRefUri:Landroid/net/Uri;

    move-object v13, v14

    .line 447
    goto/16 :goto_1
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoEx;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "inputNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 477
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/android/internal/telephony/CallerInfoEx;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoEx;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 493
    sget-boolean v2, Lcom/android/internal/telephony/CallerInfoEx;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "CallerInfoEx"

    const-string v3, "getCallerInfo() based on number..."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 496
    const/4 v1, 0x0

    .line 531
    :cond_1
    :goto_0
    return-object v1

    .line 502
    :cond_2
    invoke-static {p1, p0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 504
    const-string v2, "CTC"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 505
    new-instance v2, Lcom/android/internal/telephony/CallerInfoEx;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfoEx;-><init>()V

    invoke-virtual {v2, p0, p1}, Lcom/android/internal/telephony/CallerInfoEx;->markAsEmergency(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v1

    goto :goto_0

    .line 508
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/CallerInfoEx;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfoEx;-><init>()V

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/CallerInfoEx;->markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v1

    goto :goto_0

    .line 509
    :cond_4
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 510
    new-instance v2, Lcom/android/internal/telephony/CallerInfoEx;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfoEx;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallerInfoEx;->markAsVoiceMail()Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v1

    goto :goto_0

    .line 513
    :cond_5
    const-string v2, "support_sprint_n11"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 514
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isN11orSpecialNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 515
    const-string v2, "CallerInfoEx"

    const-string v3, "[SPRINT-Telephony] ADC - N11 !"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    new-instance v2, Lcom/android/internal/telephony/CallerInfoEx;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfoEx;-><init>()V

    invoke-virtual {v2, p0, p1}, Lcom/android/internal/telephony/CallerInfoEx;->markAsN11OrSpecial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v1

    goto :goto_0

    .line 520
    :cond_6
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 522
    .local v0, "contactUri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfoEx;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v1

    .line 523
    .local v1, "info":Lcom/android/internal/telephony/CallerInfoEx;
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/CallerInfoEx;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoEx;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v1

    .line 527
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 528
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I
    .locals 6
    .param p0, "contactRef"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 681
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfoEx;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "CallerInfoEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- getColumnIndexForPersonId: contactRef URI = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 688
    .local v2, "url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 689
    .local v1, "columnName":Ljava/lang/String;
    const-string v3, "content://com.android.contacts/data/phones"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 692
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfoEx;->VDBG:Z

    if-eqz v3, :cond_1

    const-string v3, "CallerInfoEx"

    const-string v4, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_1
    const-string v1, "contact_id"

    .line 709
    :goto_0
    if-eqz v1, :cond_8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 710
    .local v0, "columnIndex":I
    :goto_1
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfoEx;->VDBG:Z

    if-eqz v3, :cond_2

    const-string v3, "CallerInfoEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> Using column \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' (columnIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") for person_id lookup..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_2
    return v0

    .line 694
    .end local v0    # "columnIndex":I
    :cond_3
    const-string v3, "content://com.android.contacts/data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 697
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfoEx;->VDBG:Z

    if-eqz v3, :cond_4

    const-string v3, "CallerInfoEx"

    const-string v4, "\'data\' URI; using Data.CONTACT_ID"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_4
    const-string v1, "contact_id"

    goto :goto_0

    .line 700
    :cond_5
    const-string v3, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 704
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfoEx;->VDBG:Z

    if-eqz v3, :cond_6

    const-string v3, "CallerInfoEx"

    const-string v4, "\'phone_lookup\' URI; using PhoneLookup._ID"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_6
    const-string v1, "_id"

    goto :goto_0

    .line 707
    :cond_7
    const-string v3, "CallerInfoEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected prefix for contactRef \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 709
    :cond_8
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 867
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfoEx;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 847
    const/4 v1, 0x0

    .line 848
    .local v1, "countryIso":Ljava/lang/String;
    const-string v3, "country_detector"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/CountryDetector;

    .line 850
    .local v2, "detector":Landroid/location/CountryDetector;
    if-eqz v2, :cond_0

    .line 851
    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 852
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_2

    .line 853
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 858
    .end local v0    # "country":Landroid/location/Country;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 859
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 860
    const-string v3, "CallerInfoEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_1
    return-object v1

    .line 855
    .restart local v0    # "country":Landroid/location/Country;
    :cond_2
    const-string v3, "CallerInfoEx"

    const-string v4, "CountryDetector.detectCountry() returned null."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getFilepathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 14
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 734
    const/4 v12, 0x0

    .line 735
    .local v12, "filepath":Ljava/lang/String;
    const/4 v8, 0x0

    .line 736
    .local v8, "c":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 737
    .local v0, "testProvider":Landroid/content/IContentProvider;
    const/4 v1, 0x0

    .line 740
    .local v1, "mPackageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 741
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 742
    if-eqz v0, :cond_0

    .line 743
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_data"

    aput-object v4, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 754
    :cond_0
    if-eqz v0, :cond_1

    .line 755
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 759
    :cond_1
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 760
    .local v9, "count":I
    :goto_1
    if-lez v9, :cond_5

    .line 761
    if-nez v8, :cond_4

    .line 763
    const/4 v2, 0x0

    .line 778
    :goto_2
    return-object v2

    .line 746
    .end local v9    # "count":I
    :catch_0
    move-exception v10

    .line 748
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "CallerInfoEx"

    const-string v3, "getFilepathFromContentUri... error!! "

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 754
    if-eqz v0, :cond_1

    .line 755
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    goto :goto_0

    .line 750
    .end local v10    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v11

    .line 751
    .local v11, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "CallerInfoEx"

    const-string v3, "getFilepathFromContentUri error is occured"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 754
    if-eqz v0, :cond_1

    .line 755
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    goto :goto_0

    .line 754
    .end local v11    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 755
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 754
    :cond_2
    throw v2

    .line 759
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 765
    .restart local v9    # "count":I
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 766
    const-string v2, "_data"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 767
    .local v13, "i":I
    if-ltz v13, :cond_7

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 770
    .end local v13    # "i":I
    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    .line 771
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 774
    :cond_6
    if-nez v12, :cond_8

    .line 775
    const/4 v2, 0x0

    goto :goto_2

    .line 767
    .restart local v13    # "i":I
    :cond_7
    const/4 v12, 0x0

    goto :goto_3

    .end local v13    # "i":I
    :cond_8
    move-object v2, v12

    .line 778
    goto :goto_2
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 631
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 634
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private setContactExistsCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 717
    iput p1, p0, Lcom/android/internal/telephony/CallerInfoEx;->contactExistsCount:I

    .line 718
    return-void
.end method


# virtual methods
.method public addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->mMapUserData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 795
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->mMapUserData:Ljava/util/HashMap;

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContactExistsCount()I
    .locals 1

    .prologue
    .line 726
    iget v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->contactExistsCount:I

    return v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->mMapUserData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 810
    const/4 v0, 0x0

    .line 812
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmergencyNumber()Z
    .locals 1

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->mIsEmergency:Z

    return v0
.end method

.method public isVoiceMailNumber()Z
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->mIsVoiceMail:Z

    return v0
.end method

.method bridge synthetic markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallerInfoEx;->markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v0

    return-object v0
.end method

.method markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfoEx;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 583
    const v0, 0x104032a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    .line 585
    const v0, 0x10804b0

    iput v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->photoResource:I

    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->mIsEmergency:Z

    .line 587
    return-object p0
.end method

.method markAsEmergency(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoEx;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 592
    iput-object p2, p0, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    .line 593
    const v0, 0x10804b0

    iput v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->photoResource:I

    .line 594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->mIsEmergency:Z

    .line 595
    return-object p0
.end method

.method markAsN11OrSpecial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoEx;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 838
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->getN11OrSpecialNumberString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    .line 839
    return-object p0
.end method

.method bridge synthetic markAsVoiceMail()Lcom/android/internal/telephony/CallerInfo;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallerInfoEx;->markAsVoiceMail()Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v0

    return-object v0
.end method

.method markAsVoiceMail()Lcom/android/internal/telephony/CallerInfoEx;
    .locals 4

    .prologue
    .line 610
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/CallerInfoEx;->mIsVoiceMail:Z

    .line 613
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, "voiceMailLabel":Ljava/lang/String;
    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    .end local v1    # "voiceMailLabel":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 616
    :catch_0
    move-exception v0

    .line 622
    .local v0, "se":Ljava/lang/SecurityException;
    const-string v2, "CallerInfoEx"

    const-string v3, "Cannot access VoiceMail."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->mMapUserData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 824
    const/4 v0, 0x0

    .line 826
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
