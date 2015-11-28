.class public Lcom/lge/telephony/LGRssiData;
.super Ljava/lang/Object;
.source "LGRssiData.java"


# static fields
.field private static final ATTR_NAME_KEY:Ljava/lang/String; = "name"

.field private static final DBG:Z = false

.field private static final DEFAULT_RSSI_LEVEL:I = 0x5

.field private static final ELEMENT_NAME_ITEM:Ljava/lang/String; = "item"

.field private static final ELEMENT_NAME_RSSI:Ljava/lang/String; = "RSSI"

.field private static final FILE_PATH_RSSI:Ljava/lang/String; = "/etc/rssi.xml"

.field private static final TAG:Ljava/lang/String; = "LGRssiData"

.field private static instance:Lcom/lge/telephony/LGRssiData;

.field public static mRssiLevel:I

.field private static mRssiMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAsuEtcValue:[I

.field private mAsuGsmValue:[I

.field private mAsuUmtsValue:[I

.field private mCdmaDbmValue:[I

.field private mCdmaEcioValue:[I

.field private mEvdoDbmValue:[I

.field private mEvdoSnrValue:[I

.field private mLteRsrpValue:[I

.field private mLteRsrqValue:[I

.field private mLteRssnrValue:[I

.field private mLteSignalValue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/lge/telephony/LGRssiData;

    invoke-direct {v0}, Lcom/lge/telephony/LGRssiData;-><init>()V

    sput-object v0, Lcom/lge/telephony/LGRssiData;->instance:Lcom/lge/telephony/LGRssiData;

    .line 40
    const/4 v0, -0x1

    sput v0, Lcom/lge/telephony/LGRssiData;->mRssiLevel:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method private convertToInt(Ljava/lang/String;)[I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 222
    if-nez p1, :cond_1

    .line 223
    const/4 v0, 0x0

    .line 234
    :cond_0
    return-object v0

    .line 225
    :cond_1
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "tempValue":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 227
    .local v2, "size":I
    new-array v0, v2, [I

    .line 228
    .local v0, "array":[I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 229
    add-int/lit8 v4, v1, -0x1

    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v4

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/lge/telephony/LGRssiData;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/lge/telephony/LGRssiData;->instance:Lcom/lge/telephony/LGRssiData;

    return-object v0
.end method

.method private getItemValue(Ljava/lang/String;)[I
    .locals 11
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 174
    const/4 v1, 0x0

    .line 175
    .local v1, "count":I
    const/4 v2, 0x0

    .line 178
    .local v2, "dataNum":I
    sget-object v8, Lcom/lge/telephony/LGRssiData;->mRssiMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 185
    .local v7, "value":Ljava/lang/String;
    if-eqz v7, :cond_0

    sget-object v8, Lcom/lge/telephony/LGRssiData;->mRssiMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 186
    :cond_0
    const/4 v8, 0x0

    .line 210
    :goto_0
    return-object v8

    .line 189
    :cond_1
    if-eqz v7, :cond_3

    .line 190
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v6, v0, v4

    .line 192
    .local v6, "tempValue":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 193
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 195
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 190
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 203
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "tempValue":Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v1, -0x1

    if-eq v2, v8, :cond_4

    .line 204
    :try_start_0
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Data Size MisMatch"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :catch_0
    move-exception v3

    .line 206
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "LGRssiData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getItemValue] Data Size MisMatch ->count : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", dataNum : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0, v7}, Lcom/lge/telephony/LGRssiData;->convertToInt(Ljava/lang/String;)[I

    move-result-object v8

    goto :goto_0
.end method

.method private loadRssi()V
    .locals 9

    .prologue
    .line 76
    const/4 v3, 0x0

    .line 77
    .local v3, "in":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 79
    .local v0, "confFile":Ljava/io/File;
    sget-object v6, Lcom/lge/telephony/LGRssiData;->mRssiMap:Ljava/util/HashMap;

    if-eqz v6, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    const-string v6, "/etc/rssi.xml"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .restart local v0    # "confFile":Ljava/io/File;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 85
    const-string v6, "LGRssiData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[loadRssi] selected file : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v3    # "in":Ljava/io/FileReader;
    .local v4, "in":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 95
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 96
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 98
    invoke-direct {p0, v5}, Lcom/lge/telephony/LGRssiData;->readRssiData(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 99
    invoke-direct {p0}, Lcom/lge/telephony/LGRssiData;->parseRssiData()V

    .line 100
    const-string v6, "LGRssiData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[loadRssi]Loaded mRssiMap is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/lge/telephony/LGRssiData;->mRssiMap:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_2
    :goto_1
    move-object v3, v4

    .line 113
    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_0

    .line 87
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    const-string v6, "LGRssiData"

    const-string v7, "[loadRssi] File not exist "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 110
    :catch_1
    move-exception v1

    .line 111
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 103
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 104
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 109
    if-eqz v3, :cond_0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 110
    :catch_3
    move-exception v1

    goto :goto_3

    .line 105
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v1

    .line 106
    .local v1, "e":Ljava/io/IOException;
    :goto_5
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 109
    if-eqz v3, :cond_0

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 110
    :catch_5
    move-exception v1

    goto :goto_3

    .line 108
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 109
    :goto_6
    if-eqz v3, :cond_4

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 108
    :cond_4
    :goto_7
    throw v6

    .line 110
    :catch_6
    move-exception v1

    .line 111
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 110
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "in":Ljava/io/FileReader;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_7
    move-exception v1

    .line 111
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 108
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_6

    .line 105
    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v4    # "in":Ljava/io/FileReader;
    :catch_8
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_5

    .line 103
    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v4    # "in":Ljava/io/FileReader;
    :catch_9
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_4

    .line 101
    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v4    # "in":Ljava/io/FileReader;
    :catch_a
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private parseRssiData()V
    .locals 4

    .prologue
    .line 152
    sget-object v1, Lcom/lge/telephony/LGRssiData;->mRssiMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 155
    :cond_0
    sget-object v1, Lcom/lge/telephony/LGRssiData;->mRssiMap:Ljava/util/HashMap;

    const-string v2, "levelNum"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v1, 0x5

    :goto_1
    sput v1, Lcom/lge/telephony/LGRssiData;->mRssiLevel:I

    .line 157
    const-string v1, "LGRssiData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRssiLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lge/telephony/LGRssiData;->mRssiLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v1, "mLteRsrp"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mLteRsrpValue:[I

    .line 160
    const-string v1, "mLteRssnr"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mLteRssnrValue:[I

    .line 161
    const-string v1, "mLteSignalStrength"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mLteSignalValue:[I

    .line 162
    const-string v1, "mLteRsrq"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mLteRsrqValue:[I

    .line 163
    const-string v1, "asu_gsm"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mAsuGsmValue:[I

    .line 164
    const-string v1, "asu_umts"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mAsuUmtsValue:[I

    .line 165
    const-string v1, "asu_etc"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mAsuEtcValue:[I

    .line 166
    const-string v1, "cdmaDbm"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mCdmaDbmValue:[I

    .line 167
    const-string v1, "cdmaEcio"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mCdmaEcioValue:[I

    .line 168
    const-string v1, "evdoDbm"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mEvdoDbmValue:[I

    .line 169
    const-string v1, "evdoSnr"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mEvdoSnrValue:[I

    goto/16 :goto_0

    .line 156
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method private readRssiData(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 121
    .local v0, "eventType":I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/lge/telephony/LGRssiData;->mRssiMap:Ljava/util/HashMap;

    .line 123
    :goto_0
    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    .line 124
    packed-switch v0, :pswitch_data_0

    .line 144
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 128
    :pswitch_1
    const-string v4, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 131
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 132
    .local v2, "type":I
    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    .line 133
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "value":Ljava/lang/String;
    sget-object v4, Lcom/lge/telephony/LGRssiData;->mRssiMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 147
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "type":I
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-void

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAsuEtcValue()[I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mAsuUmtsValue:[I

    return-object v0
.end method

.method public getAsuGsmValue()[I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mAsuGsmValue:[I

    return-object v0
.end method

.method public getAsuUmtsValue()[I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mAsuUmtsValue:[I

    return-object v0
.end method

.method public getCdmaDbmValue()[I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mCdmaDbmValue:[I

    return-object v0
.end method

.method public getEcioValue()[I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mCdmaEcioValue:[I

    return-object v0
.end method

.method public getEvdoDbmValue()[I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mEvdoDbmValue:[I

    return-object v0
.end method

.method public getEvdoSnrValue()[I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mEvdoSnrValue:[I

    return-object v0
.end method

.method public getLteSignalValue()[I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mLteSignalValue:[I

    return-object v0
.end method

.method public getRsrpValue()[I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mLteRsrpValue:[I

    return-object v0
.end method

.method public getRsrqValue()[I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mLteRsrqValue:[I

    return-object v0
.end method

.method public getRssiLevel()I
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/lge/telephony/LGRssiData;->mRssiMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/lge/telephony/LGRssiData;->init()V

    .line 217
    :cond_0
    sget v0, Lcom/lge/telephony/LGRssiData;->mRssiLevel:I

    return v0
.end method

.method public getRssnrValue()[I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mLteRssnrValue:[I

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/lge/telephony/LGRssiData;->loadRssi()V

    .line 70
    return-void
.end method
