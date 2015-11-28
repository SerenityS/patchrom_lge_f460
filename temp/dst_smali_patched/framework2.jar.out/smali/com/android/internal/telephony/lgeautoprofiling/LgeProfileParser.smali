.class public Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;
.super Ljava/lang/Object;
.source "LgeProfileParser.java"

# interfaces
.implements Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfilingConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;,
        Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EDBG:Z = true

.field private static final VDBG:Z = true

.field private static checkLoadXmlDBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->checkLoadXmlDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isFileExist(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parse(Ljava/io/File;ILcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .locals 8
    .param p1, "confFile"    # Ljava/io/File;
    .param p2, "type"    # I
    .param p3, "simInfo"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;

    .prologue
    const/4 v2, 0x0

    .local v2, "in":Ljava/io/FileReader;
    const/4 v5, 0x0

    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    .local v4, "parsedData":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x111003b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    sget-boolean v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->checkLoadXmlDBG:Z

    if-nez v6, :cond_0

    const-string v6, "TelephonyAutoProfiling"

    const-string v7, "[parse] Do NOT load xml"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->checkLoadXmlDBG:Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v6, 0x0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :cond_1
    :goto_0
    return-object v6

    :cond_2
    :try_start_2
    const-string v6, "TelephonyAutoProfiling"

    const-string v7, "[parse] Load xml"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "in":Ljava/io/FileReader;
    .local v3, "in":Ljava/io/FileReader;
    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .local v1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-virtual {p0, p2, v5, p3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->getMatchedProfile(ILorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_3
    :goto_1
    move-object v2, v3

    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v2    # "in":Ljava/io/FileReader;
    :cond_4
    :goto_2
    move-object v6, v4

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_4

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_4

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v6

    :goto_6
    if-eqz v2, :cond_5

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_5
    :goto_7
    throw v6

    :catch_4
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/FileReader;
    .restart local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v3    # "in":Ljava/io/FileReader;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v2    # "in":Ljava/io/FileReader;
    goto :goto_6

    .end local v2    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v2    # "in":Ljava/io/FileReader;
    goto :goto_5

    .end local v2    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v2    # "in":Ljava/io/FileReader;
    goto :goto_3
.end method


# virtual methods
.method protected final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "type":I
    if-eq v1, v3, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :cond_1
    if-eq v1, v3, :cond_2

    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .local v0, "first":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected start tag: found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    return-void
.end method

.method protected existInTokens(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v0, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "st":Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected existInTokens(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "len"    # I

    .prologue
    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "xml_length":I
    if-le v3, p3, :cond_2

    move v0, p3

    .local v0, "final_length":I
    :goto_1
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, "fixed_xml_gid":Ljava/lang/String;
    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, "fixed_sim_gid":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .end local v0    # "final_length":I
    .end local v1    # "fixed_sim_gid":Ljava/lang/String;
    .end local v2    # "fixed_xml_gid":Ljava/lang/String;
    :cond_2
    move v0, v3

    .restart local v0    # "final_length":I
    goto :goto_1
.end method

.method public getMatchedProfile(ILcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .locals 9
    .param p1, "type"    # I
    .param p2, "simInfo"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;

    .prologue
    const/4 v2, 0x0

    .local v2, "matchedProfile":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    const/4 v0, 0x0

    .local v0, "confFile":Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "confFileOpen":Ljava/io/File;
    packed-switch p1, :pswitch_data_0

    const-string v6, "TelephonyAutoProfiling"

    const-string v7, "[getMatchedProfile] unsupported type"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_0
    return-object v6

    :pswitch_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    sget-object v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->FILE_PATH_CUPSS_FEATURE:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "confFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    const-string v6, "/etc/featureset.xml"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "confFile":Ljava/io/File;
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->parse(Ljava/io/File;ILcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->isFileExist(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "TelephonyAutoProfiling"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getMatchedProfile] selected file : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v6, v2

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    sget-object v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->FILE_PATH_CUPSS_PROFILE:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "confFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1    # "confFileOpen":Ljava/io/File;
    const-string v6, "/etc/telephonyOpen.xml"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v1    # "confFileOpen":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    const-string v6, "/etc/telephony.xml"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "confFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    const-string v6, "/etc/telephonyOpen.xml"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "confFile":Ljava/io/File;
    :cond_3
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->parse(Ljava/io/File;ILcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v2

    const-string v6, "TelephonyAutoProfiling"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "matchedProfile : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getMcc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getMnc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "ro.lge.autoprofile"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "TelephonyAutoProfiling"

    const-string v7, "autoprofile property is true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v2

    check-cast v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    const-string v7, "p"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .local v5, "profilePriorityFromOperatorXml":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    const-string v6, "TelephonyAutoProfiling"

    const-string v7, "bestMatchedProfile is not found on operator xml, parse open xml"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->parse(Ljava/io/File;ILcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v3

    .local v3, "openProfile":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    if-eqz v3, :cond_4

    move-object v6, v3

    check-cast v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    const-string v7, "p"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .local v4, "profilePriorityFromOpenXml":I
    const-string v6, "TelephonyAutoProfiling"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "profile priority - operatorXml : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", openXml : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v5, v4, :cond_4

    move-object v2, v3

    .end local v3    # "openProfile":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .end local v4    # "profilePriorityFromOpenXml":I
    .end local v5    # "profilePriorityFromOperatorXml":I
    :cond_4
    if-eqz v2, :cond_1

    move-object v6, v2

    check-cast v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    const-string v7, "p"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->remove(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMatchedProfile(ILorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .locals 21
    .param p1, "type"    # I
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "simInfo"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;

    .prologue
    const/4 v5, 0x0

    .local v5, "commonProfile":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    const/4 v3, 0x0

    .local v3, "bestMatchedProfile":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    const/4 v4, 0x0

    .local v4, "candidateProfile":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    const/4 v7, 0x0

    .local v7, "defaultProfile":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    const/4 v9, 0x0

    .local v9, "featureProfile":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    if-nez p2, :cond_0

    const/16 v18, 0x0

    :goto_0
    return-object v18

    :cond_0
    :try_start_0
    const-string v18, "profiles"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_1
    :goto_1
    const-string v18, "profiles"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_2
    const-string v18, "profile"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    :goto_2
    if-eqz v3, :cond_f

    move-object/from16 v18, v3

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1, v9}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->mergeProfileIfNeeded(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v18

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v18, "siminfo"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    const/16 v16, 0x0

    .local v16, "p":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    const-string v18, "true"

    const/16 v19, 0x0

    const-string v20, "default"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .local v12, "isDefault":Z
    if-eqz v12, :cond_7

    if-nez v7, :cond_5

    const-string v18, "TelephonyAutoProfiling"

    const-string v19, "[getMatchedProfile] Set defaultProfile"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->readProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v16

    const-string v18, "TelephonyAutoProfiling"

    const-string v19, "defaultProfile is found"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    check-cast v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    move-object/from16 v18, v0

    const-string v19, "p"

    const-string v20, "3"

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v16

    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->isNull()Z

    move-result v18

    if-eqz v18, :cond_7

    :cond_6
    const-string v18, "TelephonyAutoProfiling"

    const-string v19, "[getMatchedProfile] sim info is null, use default profile and escape loop"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .end local v12    # "isDefault":Z
    .end local v16    # "p":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    :catch_0
    move-exception v8

    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v12    # "isDefault":Z
    .restart local v16    # "p":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    :cond_7
    const/16 v18, 0x0

    :try_start_2
    const-string v19, "mcc"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "mccValue":Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "mnc"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "mncValue":Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "operator"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, "operatorValue":Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "country"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "countryValue":Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "gid"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "gidValue":Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "spn"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, "spnValue":Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "imsi"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "imsiValue":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13, v14}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->matchMccMnc(Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    if-nez v4, :cond_9

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_9

    if-nez v16, :cond_8

    const-string v18, "TelephonyAutoProfiling"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[getMatchedProfile] Set candidateProfile - MCC : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", MNC : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->readProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v16

    const-string v18, "TelephonyAutoProfiling"

    const-string v19, "candidateProfile is found"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    check-cast v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    move-object/from16 v18, v0

    const-string v19, "p"

    const-string v20, "2"

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move-object/from16 v4, v16

    :cond_9
    if-nez v3, :cond_b

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_b

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v10, v2, v11}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->matchExtension(Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    const-string v18, "TelephonyAutoProfiling"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[getMatchedProfile] Set bestMatchedProfile  -MCC : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x100

    move/from16 v0, v20

    invoke-static {v13, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", MNC : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x100

    move/from16 v0, v20

    invoke-static {v14, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", GID : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x100

    move/from16 v0, v20

    invoke-static {v10, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", SPN : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x100

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", IMSI : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x100

    move/from16 v0, v20

    invoke-static {v11, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->readProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v16

    const-string v18, "TelephonyAutoProfiling"

    const-string v19, "bestMatchedProfile is found"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    check-cast v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    move-object/from16 v18, v0

    const-string v19, "p"

    const-string v20, "1"

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v16

    goto/16 :goto_2

    :cond_b
    if-nez v16, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->skipCurrentElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .end local v6    # "countryValue":Ljava/lang/String;
    .end local v10    # "gidValue":Ljava/lang/String;
    .end local v11    # "imsiValue":Ljava/lang/String;
    .end local v12    # "isDefault":Z
    .end local v13    # "mccValue":Ljava/lang/String;
    .end local v14    # "mncValue":Ljava/lang/String;
    .end local v15    # "operatorValue":Ljava/lang/String;
    .end local v16    # "p":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .end local v17    # "spnValue":Ljava/lang/String;
    :catch_1
    move-exception v8

    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .end local v8    # "e":Ljava/io/IOException;
    :cond_c
    :try_start_3
    const-string v18, "CommonProfile"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->readProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v5

    goto/16 :goto_1

    :cond_d
    const-string v18, "FeatureSet"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->readProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v9

    goto/16 :goto_1

    :cond_e
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unexpected tag: found "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_f
    if-eqz v4, :cond_10

    move-object/from16 v18, v4

    goto/16 :goto_3

    :cond_10
    move-object/from16 v18, v7

    goto/16 :goto_3
.end method

.method protected matchExtension(Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "simInfo"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;
    .param p2, "gidParsed"    # Ljava/lang/String;
    .param p3, "spnParsed"    # Ljava/lang/String;
    .param p4, "imsiParsed"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const/4 v12, 0x0

    :goto_0
    return v12

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getGid()Ljava/lang/String;

    move-result-object v3

    .local v3, "gid":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getSpn()Ljava/lang/String;

    move-result-object v9

    .local v9, "spn":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getImsi()Ljava/lang/String;

    move-result-object v6

    .local v6, "imsi":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "gidLength":I
    if-eqz p2, :cond_4

    const-string v12, "00"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {p0, p2, v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->existInTokens(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v12

    if-nez v12, :cond_4

    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .end local v4    # "gidLength":I
    :cond_3
    if-eqz p2, :cond_4

    const/4 v12, 0x0

    goto :goto_0

    :cond_4
    if-eqz v9, :cond_5

    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v9}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->existInTokens(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    const/4 v12, 0x0

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_6

    const/4 v12, 0x0

    goto :goto_0

    :cond_6
    if-eqz p4, :cond_b

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_b

    const/4 v2, 0x0

    .local v2, "found":Z
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, "imsiLength":I
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v12, ","

    move-object/from16 v0, p4

    invoke-direct {v10, v0, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v10, "st":Ljava/util/StringTokenizer;
    :cond_7
    :goto_1
    if-nez v2, :cond_a

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .local v11, "t":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    .local v8, "len":I
    if-gt v8, v7, :cond_7

    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v8, :cond_8

    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, "c":C
    const/16 v12, 0x78

    if-eq v1, v12, :cond_9

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v1, v12, :cond_9

    .end local v1    # "c":C
    :cond_8
    if-ne v5, v8, :cond_7

    const/4 v2, 0x1

    goto :goto_1

    .restart local v1    # "c":C
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v1    # "c":C
    .end local v5    # "i":I
    .end local v7    # "imsiLength":I
    .end local v8    # "len":I
    .end local v10    # "st":Ljava/util/StringTokenizer;
    .end local v11    # "t":Ljava/lang/String;
    :cond_a
    if-nez v2, :cond_b

    const/4 v12, 0x0

    goto/16 :goto_0

    .end local v2    # "found":Z
    :cond_b
    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method protected matchMccMnc(Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "simInfo"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;
    .param p2, "mccParsed"    # Ljava/lang/String;
    .param p3, "mncParsed"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getMcc()Ljava/lang/String;

    move-result-object v0

    .local v0, "mcc":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getMnc()Ljava/lang/String;

    move-result-object v1

    .local v1, "mnc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->existInTokens(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p3, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->existInTokens(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .end local v0    # "mcc":Ljava/lang/String;
    .end local v1    # "mnc":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected mergeProfile(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .locals 8
    .param p1, "commonProfile"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .param p2, "matchedProfile"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .param p3, "featureProfile"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    .prologue
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    .local v0, "cp":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;
    move-object v4, p2

    check-cast v4, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    .local v4, "mp":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;
    move-object v1, p3

    check-cast v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    .local v1, "fp":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;
    if-eqz v0, :cond_1

    # getter for: Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->mNameValueMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->access$000(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "key":Ljava/lang/String;
    # getter for: Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->mNameValueMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->access$000(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    # getter for: Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->mNameValueMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->access$000(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    if-eqz v1, :cond_3

    # getter for: Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->mNameValueMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->access$000(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .restart local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .restart local v2    # "key":Ljava/lang/String;
    # getter for: Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->mNameValueMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->access$000(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    # getter for: Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->mNameValueMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->access$000(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    return-object v4
.end method

.method protected mergeProfileIfNeeded(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .locals 1
    .param p1, "globalProfile"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .param p2, "matchedProfile"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .param p3, "featureProfile"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-nez p3, :cond_1

    if-nez p2, :cond_1

    move-object p1, v0

    .end local p1    # "globalProfile":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "globalProfile":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    :cond_1
    if-nez p2, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->mergeProfile(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->mergeProfile(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object p1

    goto :goto_0
.end method

.method protected final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method protected readProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    invoke-direct {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;-><init>()V

    .local v1, "p":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;
    :goto_0
    const-string v5, "siminfo"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "FeatureSet"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_1
    :goto_1
    const-string v5, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, "tag":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "name"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v5, 0x4

    if-ne v3, v5, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v1, v0, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "type":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "tag":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method protected final skipCurrentElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .local v0, "depth":I
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    const-string v2, "siminfo"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "profile"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "type":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v2, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_2
    const-string v2, "profile"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method
