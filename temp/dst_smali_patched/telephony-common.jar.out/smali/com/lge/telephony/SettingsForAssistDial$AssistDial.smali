.class public final Lcom/lge/telephony/SettingsForAssistDial$AssistDial;
.super Ljava/lang/Object;
.source "SettingsForAssistDial.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/SettingsForAssistDial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssistDial"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "content://settings/assist_dial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-object v0, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initAssistDialCountryDetailList(Landroid/content/ContentResolver;)V
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const-string v5, "SettingsForAssistDial"

    const-string v6, "initAssistDialCountryDetailList()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->initCountryOriginDataTable()V

    const-string v0, "000"

    .local v0, "areaCode":Ljava/lang/String;
    const-string v2, "10"

    .local v2, "numLength":Ljava/lang/String;
    sget-object v5, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    if-nez v5, :cond_0

    const-string v5, "SettingsForAssistDial"

    const-string v6, "List is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v5, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    array-length v3, v5

    .local v3, "size":I
    new-array v4, v3, [Landroid/content/ContentValues;

    .local v4, "values":[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    aput-object v5, v4, v1

    aget-object v5, v4, v1

    const-string v6, "countryindex"

    sget-object v7, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/lge/telephony/LGReferenceCountry;->getIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    aget-object v5, v4, v1

    const-string v6, "countryname"

    sget-object v7, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/lge/telephony/LGReferenceCountry;->getCountryName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v5, v4, v1

    const-string v6, "mcc"

    sget-object v7, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/lge/telephony/LGReferenceCountry;->getMccCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v5, v4, v1

    const-string v6, "countrycode"

    sget-object v7, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/lge/telephony/LGReferenceCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v5, v4, v1

    const-string v6, "iddprefix"

    sget-object v7, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/lge/telephony/LGReferenceCountry;->getIddPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v5, v4, v1

    const-string v6, "nddprefix"

    sget-object v7, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/lge/telephony/LGReferenceCountry;->getNddPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v5, v4, v1

    const-string v6, "nanp"

    sget-object v7, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/lge/telephony/LGReferenceCountry;->getNanp()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v5, v4, v1

    const-string v6, "area"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v5, v4, v1

    const-string v6, "length"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_1
    if-nez p0, :cond_2

    const-string v5, "SettingsForAssistDial"

    const-string v6, "Resolver is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    sget-object v5, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v5, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto/16 :goto_0
.end method

.method public static initAssistDialCountryDetailList(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "areaCode"    # Ljava/lang/String;

    .prologue
    const-string v4, "SettingsForAssistDial"

    const-string v5, "initAssistDialCountryDetailList()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->initCountryOriginDataTable()V

    const-string v1, "10"

    .local v1, "numLength":Ljava/lang/String;
    sget-object v4, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    if-nez v4, :cond_0

    const-string v4, "SettingsForAssistDial"

    const-string v5, "List is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v4, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    array-length v2, v4

    .local v2, "size":I
    new-array v3, v2, [Landroid/content/ContentValues;

    .local v3, "values":[Landroid/content/ContentValues;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v3, v0

    aget-object v4, v3, v0

    const-string v5, "countryindex"

    sget-object v6, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/lge/telephony/LGReferenceCountry;->getIndex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    aget-object v4, v3, v0

    const-string v5, "countryname"

    sget-object v6, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/lge/telephony/LGReferenceCountry;->getCountryName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v3, v0

    const-string v5, "mcc"

    sget-object v6, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/lge/telephony/LGReferenceCountry;->getMccCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v3, v0

    const-string v5, "countrycode"

    sget-object v6, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/lge/telephony/LGReferenceCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v3, v0

    const-string v5, "iddprefix"

    sget-object v6, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/lge/telephony/LGReferenceCountry;->getIddPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v3, v0

    const-string v5, "nddprefix"

    sget-object v6, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/lge/telephony/LGReferenceCountry;->getNddPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v3, v0

    const-string v5, "nanp"

    sget-object v6, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/lge/telephony/LGReferenceCountry;->getNanp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v3, v0

    const-string v5, "area"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v3, v0

    const-string v5, "length"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_1
    if-nez p0, :cond_2

    const-string v4, "SettingsForAssistDial"

    const-string v5, "Resolver is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    sget-object v4, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v4, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto/16 :goto_0
.end method

.method private static initCountryOriginDataTable()V
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .local v10, "r":Landroid/content/res/Resources;
    const/16 v0, 0xdf

    new-array v11, v0, [Lcom/lge/telephony/LGReferenceCountry;

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const v2, 0x20d01c6

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "310,311,312,313,314,315,316"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v1

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const v1, 0x20d022c

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "412"

    const-string v4, "93"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    move v1, v12

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const v1, 0x20d022d

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "276"

    const-string v4, "355"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    move v1, v13

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v13

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const v1, 0x20d01c7

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "603"

    const-string v4, "213"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    move v1, v14

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v14

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const v1, 0x20d022e

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "544"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    move v1, v15

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v15

    const/4 v12, 0x5

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/4 v1, 0x5

    const v2, 0x20d022f

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "213"

    const-string v4, "376"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/4 v12, 0x6

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/4 v1, 0x6

    const v2, 0x20d01c8

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "631"

    const-string v4, "244"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/4 v12, 0x7

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/4 v1, 0x7

    const v2, 0x20d0230

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "365"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x8

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x8

    const v2, 0x20d0231

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "344"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x9

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x9

    const v2, 0x20d01c9

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "722"

    const-string v4, "54"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xa

    const v2, 0x20d0232

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "283"

    const-string v4, "374"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xb

    const v2, 0x20d0233

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "363"

    const-string v4, "297"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xc

    const v2, 0x20d0234

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "505"

    const-string v4, "61"

    const-string v5, "0011"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xd

    const v2, 0x20d0235

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "232"

    const-string v4, "43"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xe

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xe

    const v2, 0x20d0236

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "400"

    const-string v4, "994"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xf

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xf

    const v2, 0x20d01ca

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "364"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x10

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x10

    const v2, 0x20d0237

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "426"

    const-string v4, "973"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x11

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x11

    const v2, 0x20d01cb

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "470"

    const-string v4, "880"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x12

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x12

    const v2, 0x20d01cc

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "342"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x13

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x13

    const v2, 0x20d01cd

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "257"

    const-string v4, "375"

    const-string v5, "810"

    const-string v6, "8"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x14

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x14

    const v2, 0x20d0238

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "206"

    const-string v4, "32"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x15

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x15

    const v2, 0x20d01ce

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "702"

    const-string v4, "501"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x16

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x16

    const v2, 0x20d0239

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "616,"

    const-string v4, "229"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x17

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x17

    const v2, 0x20d01cf

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "350"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x18

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x18

    const v2, 0x20d023a

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "402"

    const-string v4, "975"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x19

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x19

    const v2, 0x20d023b

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "736"

    const-string v4, "591"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x1a

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x1a

    const v2, 0x20d023c

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "218"

    const-string v4, "387"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x1b

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x1b

    const v2, 0x20d01d0

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "652"

    const-string v4, "267"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x1c

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x1c

    const v2, 0x20d01d1

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "724"

    const-string v4, "55"

    const-string v5, "0015"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x1d

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x1d

    const v2, 0x20d01d2

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "348"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x1e

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x1e

    const v2, 0x20d023d

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "528"

    const-string v4, "673"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x1f

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x1f

    const v2, 0x20d023e

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "284"

    const-string v4, "359"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x20

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x20

    const v2, 0x20d023f

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "613"

    const-string v4, "226"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x21

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x21

    const v2, 0x20d0240

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "642"

    const-string v4, "257"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x22

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x22

    const v2, 0x20d0241

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "456"

    const-string v4, "855"

    const-string v5, "001"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x23

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x23

    const v2, 0x20d01d3

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "624"

    const-string v4, "237"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x24

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x24

    const v2, 0x20d01d4

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "302"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x25

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x25

    const v2, 0x20d01d5

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "625"

    const-string v4, "238"

    const-string v5, "0"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x26

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x26

    const v2, 0x20d01d6

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "346"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x27

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x27

    const v2, 0x20d01d7

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "623"

    const-string v4, "236"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x28

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x28

    const v2, 0x20d0242

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "622"

    const-string v4, "235"

    const-string v5, "15"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x29

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x29

    const v2, 0x20d01d8

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "730"

    const-string v4, "56"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x2a

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x2a

    const v2, 0x20d01d9

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "460"

    const-string v4, "86"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x2b

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x2b

    const v2, 0x20d01da

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "732"

    const-string v4, "57"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x2c

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x2c

    const v2, 0x20d0243

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "654"

    const-string v4, "269"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x2d

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x2d

    const v2, 0x20d0244

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "548"

    const-string v4, "682"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x2e

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x2e

    const v2, 0x20d0245

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "712"

    const-string v4, "506"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x2f

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x2f

    const v2, 0x20d01db

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "612"

    const-string v4, "225"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x30

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x30

    const v2, 0x20d0246

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "219"

    const-string v4, "385"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x31

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x31

    const v2, 0x20d0247

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "368"

    const-string v4, "53"

    const-string v5, "119"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x32

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x32

    const v2, 0x20d0248

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "280"

    const-string v4, "357"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x33

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x33

    const v2, 0x20d01dc

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "230"

    const-string v4, "420"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x34

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x34

    const v2, 0x20d01dd

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "630"

    const-string v4, "243"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x35

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x35

    const v2, 0x20d01de

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "238"

    const-string v4, "45"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x36

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x36

    const v2, 0x20d01df

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "638"

    const-string v4, "253"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x37

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x37

    const v2, 0x20d0249

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "366"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x38

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x38

    const v2, 0x20d01e0

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "370"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x39

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x39

    const v2, 0x20d024a

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "514"

    const-string v4, "670"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x3a

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x3a

    const v2, 0x20d01e1

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "740"

    const-string v4, "593"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x3b

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x3b

    const v2, 0x20d01e2

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "602"

    const-string v4, "20"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x3c

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x3c

    const v2, 0x20d01e3

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "706"

    const-string v4, "503"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x3d

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x3d

    const v2, 0x20d024b

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "627"

    const-string v4, "240"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x3e

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x3e

    const v2, 0x20d024c

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "657"

    const-string v4, "291"

    const-string v5, "00"

    const-string v6, "00"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x3f

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x3f

    const v2, 0x20d01e4

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "248"

    const-string v4, "372"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x40

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x40

    const v2, 0x20d01e5

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "636"

    const-string v4, "251"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x41

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x41

    const v2, 0x20d024d

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "288"

    const-string v4, "298"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x42

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x42

    const v2, 0x20d024e

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "550"

    const-string v4, "691"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x43

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x43

    const v2, 0x20d01e6

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "542"

    const-string v4, "679"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x44

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x44

    const v2, 0x20d024f

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "244"

    const-string v4, "358"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x45

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x45

    const v2, 0x20d0250

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "208"

    const-string v4, "33"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x46

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x46

    const v2, 0x20d0251

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "742"

    const-string v4, "594"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x47

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x47

    const v2, 0x20d0252

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "547"

    const-string v4, "689"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x48

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x48

    const v2, 0x20d0253

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "628"

    const-string v4, "241"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x49

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x49

    const v2, 0x20d01e7

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "607"

    const-string v4, "220"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x4a

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x4a

    const v2, 0x20d0254

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "282"

    const-string v4, "995"

    const-string v5, "810"

    const-string v6, "8"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x4b

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x4b

    const v2, 0x20d0255

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "262"

    const-string v4, "49"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x4c

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x4c

    const v2, 0x20d01e8

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "620"

    const-string v4, "233"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x4d

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x4d

    const v2, 0x20d0256

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "266"

    const-string v4, "350"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x4e

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x4e

    const v2, 0x20d0257

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "202"

    const-string v4, "30"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x4f

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x4f

    const v2, 0x20d0258

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "290"

    const-string v4, "299"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x50

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x50

    const v2, 0x20d0259

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "352"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x51

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x51

    const v2, 0x20d025a

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "340"

    const-string v4, "590"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x52

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x52

    const v2, 0x20d01e9

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "535"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x53

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x53

    const v2, 0x20d01ea

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "704"

    const-string v4, "502"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x54

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x54

    const v2, 0x20d025b

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "611"

    const-string v4, "224"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x55

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x55

    const v2, 0x20d025c

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "632"

    const-string v4, "245"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x56

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x56

    const v2, 0x20d025d

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "738"

    const-string v4, "592"

    const-string v5, "001"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x57

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x57

    const v2, 0x20d01eb

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "372"

    const-string v4, "509"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x58

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x58

    const v2, 0x20d01ec

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "708"

    const-string v4, "504"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x59

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x59

    const v2, 0x20d01ed

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "454"

    const-string v4, "852"

    const-string v5, "001"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x5a

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x5a

    const v2, 0x20d01ee

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "216"

    const-string v4, "36"

    const-string v5, "00"

    const-string v6, "06"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x5b

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x5b

    const v2, 0x20d01ef

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "274"

    const-string v4, "354"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x5c

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x5c

    const v2, 0x20d01f0

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "404,405"

    const-string v4, "91"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x5d

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x5d

    const v2, 0x20d01f1

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "510"

    const-string v4, "62"

    const-string v5, "001"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x5e

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x5e

    const v2, 0x20d025e

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "432"

    const-string v4, "98"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x5f

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x5f

    const v2, 0x20d01f2

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "418"

    const-string v4, "964"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x60

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x60

    const v2, 0x20d01f3

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "272"

    const-string v4, "353"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x61

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x61

    const v2, 0x20d01f4

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "425"

    const-string v4, "972"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x62

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x62

    const v2, 0x20d025f

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "222"

    const-string v4, "39"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x63

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x63

    const v2, 0x20d01f5

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "338"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x64

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x64

    const v2, 0x20d01f6

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "440,441"

    const-string v4, "81"

    const-string v5, "010"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x65

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x65

    const v2, 0x20d01f7

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "416"

    const-string v4, "962"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x66

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x66

    const v2, 0x20d0260

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "401"

    const-string v4, "7"

    const-string v5, "810"

    const-string v6, "8"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x67

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x67

    const v2, 0x20d01f8

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "639"

    const-string v4, "254"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x68

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x68

    const v2, 0x20d0261

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "545"

    const-string v4, "686"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x69

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x69

    const v2, 0x20d01f9

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "467"

    const-string v4, "850"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x6a

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x6a

    const v2, 0x20d01fa

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "450"

    const-string v4, "82"

    const-string v5, "00700"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x6b

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x6b

    const v2, 0x20d01fb

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "419"

    const-string v4, "965"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x6c

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x6c

    const v2, 0x20d0262

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "437"

    const-string v4, "996"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x6d

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x6d

    const v2, 0x20d01fc

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "457"

    const-string v4, "856"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x6e

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x6e

    const v2, 0x20d01fd

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "247"

    const-string v4, "371"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x6f

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x6f

    const v2, 0x20d0263

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "415"

    const-string v4, "961"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x70

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x70

    const v2, 0x20d0264

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "651"

    const-string v4, "266"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x71

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x71

    const v2, 0x20d0265

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "618"

    const-string v4, "231"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x72

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x72

    const v2, 0x20d0266

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "606"

    const-string v4, "218"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x73

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x73

    const v2, 0x20d0267

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "295"

    const-string v4, "423"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x74

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x74

    const v2, 0x20d0268

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "246"

    const-string v4, "370"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x75

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x75

    const v2, 0x20d0269

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "270"

    const-string v4, "352"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x76

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x76

    const v2, 0x20d026a

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "455"

    const-string v4, "853"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x77

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x77

    const v2, 0x20d01fe

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "646"

    const-string v4, "261"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x78

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x78

    const v2, 0x20d026b

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "650"

    const-string v4, "265"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x79

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x79

    const v2, 0x20d01ff

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "502"

    const-string v4, "60"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x7a

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x7a

    const v2, 0x20d026c

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "472"

    const-string v4, "960"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x7b

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x7b

    const v2, 0x20d0200

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "610"

    const-string v4, "223"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x7c

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x7c

    const v2, 0x20d026d

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "278"

    const-string v4, "356"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x7d

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x7d

    const v2, 0x20d026e

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "901"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x7e

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x7e

    const v2, 0x20d026f

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "551"

    const-string v4, "692"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x7f

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x7f

    const v2, 0x20d0270

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "340"

    const-string v4, "596"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x80

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x80

    const v2, 0x20d0201

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "609"

    const-string v4, "222"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x81

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x81

    const v2, 0x20d0202

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "617"

    const-string v4, "230"

    const-string v5, "020"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x82

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x82

    const v2, 0x20d0203

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "334"

    const-string v4, "52"

    const-string v5, "00"

    const-string v6, "01"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x83

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x83

    const v2, 0x20d0204

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "259"

    const-string v4, "373"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x84

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x84

    const v2, 0x20d0271

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "212"

    const-string v4, "377"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x85

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x85

    const v2, 0x20d0205

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "428"

    const-string v4, "976"

    const-string v5, "001"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x86

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x86

    const v2, 0x20d0272

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "354"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x87

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x87

    const v2, 0x20d0206

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "604"

    const-string v4, "212"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x88

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x88

    const v2, 0x20d0207

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "643"

    const-string v4, "258"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x89

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x89

    const v2, 0x20d0208

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "414"

    const-string v4, "95"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x8a

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x8a

    const v2, 0x20d0209

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "649"

    const-string v4, "264"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x8b

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x8b

    const v2, 0x20d0273

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "536"

    const-string v4, "674"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x8c

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x8c

    const v2, 0x20d0274

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "429"

    const-string v4, "977"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x8d

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x8d

    const v2, 0x20d0275

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "204"

    const-string v4, "31"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x8e

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x8e

    const v2, 0x20d020a

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "362"

    const-string v4, "599"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x8f

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x8f

    const v2, 0x20d0276

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "546"

    const-string v4, "687"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x90

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x90

    const v2, 0x20d020b

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "530"

    const-string v4, "64"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x91

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x91

    const v2, 0x20d020c

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "710"

    const-string v4, "505"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x92

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x92

    const v2, 0x20d020d

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "614"

    const-string v4, "227"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x93

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x93

    const v2, 0x20d020e

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "621"

    const-string v4, "234"

    const-string v5, "009"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x94

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x94

    const v2, 0x20d020f

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "534"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x95

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x95

    const v2, 0x20d0210

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "242"

    const-string v4, "47"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x96

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x96

    const v2, 0x20d0211

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "422"

    const-string v4, "968"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x97

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x97

    const v2, 0x20d0212

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "410"

    const-string v4, "92"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x98

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x98

    const v2, 0x20d0277

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "552"

    const-string v4, "680"

    const-string v5, "11"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x99

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x99

    const v2, 0x20d0278

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "714"

    const-string v4, "507"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x9a

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x9a

    const v2, 0x20d0279

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "537"

    const-string v4, "675"

    const-string v5, "5"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x9b

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x9b

    const v2, 0x20d027a

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "744"

    const-string v4, "595"

    const-string v5, "2"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x9c

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x9c

    const v2, 0x20d0213

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "716"

    const-string v4, "51"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x9d

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x9d

    const v2, 0x20d027b

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "515"

    const-string v4, "63"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x9e

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x9e

    const v2, 0x20d0214

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "260"

    const-string v4, "48"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x9f

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x9f

    const v2, 0x20d0215

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "268"

    const-string v4, "351"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa0

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xa0

    const v2, 0x20d0216

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "330"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa1

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xa1

    const v2, 0x20d027c

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "427"

    const-string v4, "974"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa2

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xa2

    const v2, 0x20d027e

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "294"

    const-string v4, "389"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa3

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xa3

    const v2, 0x20d027f

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "629"

    const-string v4, "242"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa4

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xa4

    const v2, 0x20d027d

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "647"

    const-string v4, "262"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa5

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xa5

    const v2, 0x20d0217

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "226"

    const-string v4, "40"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa6

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xa6

    const v2, 0x20d0218

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "250"

    const-string v4, "7"

    const-string v5, "810"

    const-string v6, "8"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa7

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xa7

    const v2, 0x20d0219

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "635"

    const-string v4, "250"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa8

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xa8

    const v2, 0x20d0281

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "356"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa9

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xa9

    const v2, 0x20d0282

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "358"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xaa

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xaa

    const v2, 0x20d0283

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "308"

    const-string v4, "508"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xab

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xab

    const v2, 0x20d0284

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "360"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xac

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xac

    const v2, 0x20d0285

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "549"

    const-string v4, "685"

    const-string v5, "0"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xad

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xad

    const v2, 0x20d0286

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "292"

    const-string v4, "378"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xae

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xae

    const v2, 0x20d0280

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "626"

    const-string v4, "239"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xaf

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xaf

    const v2, 0x20d021a

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "420"

    const-string v4, "966"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb0

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xb0

    const v2, 0x20d0287

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "608"

    const-string v4, "221"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb1

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xb1

    const v2, 0x20d0288

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "220"

    const-string v4, "381"

    const-string v5, "99"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb2

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xb2

    const v2, 0x20d0289

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "633"

    const-string v4, "248"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb3

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xb3

    const v2, 0x20d028a

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "619"

    const-string v4, "232"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb4

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xb4

    const v2, 0x20d028b

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "525"

    const-string v4, "65"

    const-string v5, "001"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb5

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xb5

    const v2, 0x20d028c

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "231"

    const-string v4, "421"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb6

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xb6

    const v2, 0x20d028d

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "293"

    const-string v4, "386"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb7

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xb7

    const v2, 0x20d028e

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "540"

    const-string v4, "677"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb8

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xb8

    const v2, 0x20d028f

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "637"

    const-string v4, "252"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb9

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xb9

    const v2, 0x20d021b

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "655"

    const-string v4, "27"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xba

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xba

    const v2, 0x20d0290

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "214"

    const-string v4, "34"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xbb

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xbb

    const v2, 0x20d0291

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "413"

    const-string v4, "94"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xbc

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xbc

    const v2, 0x20d0292

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "634"

    const-string v4, "249"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xbd

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xbd

    const v2, 0x20d021c

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "746"

    const-string v4, "597"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xbe

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xbe

    const v2, 0x20d021d

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "653"

    const-string v4, "268"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xbf

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xbf

    const v2, 0x20d021e

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "240"

    const-string v4, "46"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc0

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xc0

    const v2, 0x20d0293

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "228"

    const-string v4, "41"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc1

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xc1

    const v2, 0x20d0294

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "417"

    const-string v4, "963"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc2

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xc2

    const v2, 0x20d0295

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "466"

    const-string v4, "886"

    const-string v5, "002"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc3

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xc3

    const v2, 0x20d0296

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "436"

    const-string v4, "992"

    const-string v5, "810"

    const-string v6, "8"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc4

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xc4

    const v2, 0x20d021f

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "640"

    const-string v4, "255"

    const-string v5, "000"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc5

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xc5

    const v2, 0x20d0220

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "520"

    const-string v4, "66"

    const-string v5, "001"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc6

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xc6

    const v2, 0x20d0221

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "615"

    const-string v4, "228"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc7

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xc7

    const v2, 0x20d0222

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "539"

    const-string v4, "676"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc8

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xc8

    const v2, 0x20d0223

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "374"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc9

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xc9

    const v2, 0x20d0297

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "605"

    const-string v4, "216"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xca

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xca

    const v2, 0x20d0298

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "286"

    const-string v4, "90"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xcb

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xcb

    const v2, 0x20d0299

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "438"

    const-string v4, "993"

    const-string v5, "810"

    const-string v6, "8"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xcc

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xcc

    const v2, 0x20d029a

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "376"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xcd

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xcd

    const v2, 0x20d0224

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "641"

    const-string v4, "256"

    const-string v5, "000"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xce

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xce

    const v2, 0x20d0225

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "255"

    const-string v4, "380"

    const-string v5, "810"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xcf

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xcf

    const v2, 0x20d029b

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "424"

    const-string v4, "971"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd0

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xd0

    const v2, 0x20d029c

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "430"

    const-string v4, "971"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd1

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xd1

    const v2, 0x20d029d

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "431"

    const-string v4, "971"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd2

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xd2

    const v2, 0x20d029e

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "234,235"

    const-string v4, "44"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd3

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xd3

    const v2, 0x20d0226

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "332"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd4

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xd4

    const v2, 0x20d029f

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "748"

    const-string v4, "598"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd5

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xd5

    const v2, 0x20d0227

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "434"

    const-string v4, "998"

    const-string v5, "810"

    const-string v6, "8"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd6

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xd6

    const v2, 0x20d02a0

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "541"

    const-string v4, "678"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd7

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xd7

    const v2, 0x20d02a1

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "225"

    const-string v4, "39"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd8

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xd8

    const v2, 0x20d0228

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "734"

    const-string v4, "58"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd9

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xd9

    const v2, 0x20d02a2

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "452"

    const-string v4, "84"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xda

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xda

    const v2, 0x20d02a3

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "543"

    const-string v4, "681"

    const-string v5, "19"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xdb

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xdb

    const v2, 0x20d0229

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "421"

    const-string v4, "967"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xdc

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xdc

    const v2, 0x20d022a

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "645"

    const-string v4, "260"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xdd

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xdd

    const v2, 0x20d02a4

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "648"

    const-string v4, "263"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xde

    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xde

    const v2, 0x20d02a5

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1024"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "0"

    const-string v8, ""

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    sput-object v11, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    return-void
.end method
