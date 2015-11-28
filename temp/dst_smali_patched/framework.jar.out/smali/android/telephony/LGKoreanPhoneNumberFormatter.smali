.class Landroid/telephony/LGKoreanPhoneNumberFormatter;
.super Ljava/lang/Object;
.source "LGKoreanPhoneNumberFormatter.java"


# static fields
.field private static DBG:Z

.field private static DDD_3_Number:[S

.field private static DDD_5_Number:[S

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    const-string v0, "LGKoreanPhoneNumberFormatter"

    sput-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    const/16 v0, 0x25

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_3_Number:[S

    const/16 v0, 0x11

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_5_Number:[S

    return-void

    :array_0
    .array-data 2
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xas
        0xbs
        0xcs
        0xds
        0xfs
        0x10s
        0x11s
        0x12s
        0x13s
        0x1fs
        0x20s
        0x21s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x46s
        0x50s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x12cs
        0x141s
        0x155s
        0x158s
        0x159s
        0x16ds
        0x2bcs
        0x2d7s
        0x2f3s
        0x30cs
        0x2fes
        0x313s
        0x184s
        0x302s
        0x309s
        0x2f1s
        0x2c3s
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Landroid/text/Editable;)V
    .locals 17
    .param p0, "oritext"    # Landroid/text/Editable;

    .prologue
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v4

    .local v4, "text":Landroid/text/Editable;
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v4, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    invoke-interface {v4, v1}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    sget-boolean v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "format input = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v14, 0x0

    .local v14, "tmp1stHyphen":I
    const/4 v15, 0x0

    .local v15, "tmp2ndHyphen":I
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v12

    .local v12, "length":I
    const/4 v13, 0x0

    .local v13, "p":I
    :goto_0
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v13, v1, :cond_2

    invoke-interface {v4, v13}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v13, 0x1

    invoke-interface {v4, v13, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v12

    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v12, :cond_e

    invoke-interface {v4, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_3

    invoke-interface {v4, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-le v1, v2, :cond_d

    :cond_3
    invoke-interface {v4, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_d

    invoke-interface {v4, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_d

    invoke-interface {v4, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x57

    if-eq v1, v2, :cond_d

    invoke-interface {v4, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x50

    if-eq v1, v2, :cond_d

    :try_start_0
    sget-boolean v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v1, :cond_4

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oritext = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v1, :cond_5

    if-eqz p0, :cond_5

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oritext.toString() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,oritext.length() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-boolean v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "text.toString() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,text.length() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v4, :cond_7

    if-eqz p0, :cond_7

    const/4 v2, 0x0

    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v3

    const/4 v5, 0x0

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v6

    move-object/from16 v1, p0

    invoke-interface/range {v1 .. v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    :cond_7
    sget-boolean v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v1, :cond_8

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "step2 oritext = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-boolean v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v1, :cond_9

    if-eqz p0, :cond_9

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oritext.toString() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,oritext.length() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget-boolean v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v1, :cond_a

    if-eqz v4, :cond_a

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "text.toString() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,text.length() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_2
    return-void

    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selection Exception i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,oritext = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " e ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_c

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oritext.toString() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,oritext.length() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz v4, :cond_b

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "text.toString() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,text.length() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_e
    const/4 v1, 0x2

    if-lt v12, v1, :cond_b

    const-string v1, "*"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "#"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_f

    const/4 v1, 0x1

    invoke-interface {v4, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_f

    const/4 v14, 0x2

    :cond_f
    const/4 v1, 0x3

    if-lt v12, v1, :cond_10

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_10

    const/4 v1, 0x1

    invoke-interface {v4, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_10

    const/4 v1, 0x2

    invoke-interface {v4, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_10

    const/4 v14, 0x3

    :cond_10
    const/4 v1, 0x4

    if-lt v12, v1, :cond_11

    const-string v1, "KR"

    const-string v2, "KT"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x4

    if-ne v12, v1, :cond_19

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit16 v1, v1, 0x3e8

    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-interface {v4, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    const/4 v2, 0x3

    invoke-interface {v4, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int v16, v1, v2

    .local v16, "tmpDDDNumber":I
    const/16 v1, 0x7d4

    move/from16 v0, v16

    if-ne v0, v1, :cond_11

    const/4 v14, 0x0

    .end local v16    # "tmpDDDNumber":I
    :cond_11
    const/4 v1, 0x4

    if-ne v12, v1, :cond_14

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit16 v1, v1, 0x3e8

    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-interface {v4, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    const/4 v2, 0x3

    invoke-interface {v4, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int v16, v1, v2

    .restart local v16    # "tmpDDDNumber":I
    const/16 v1, 0x1f4

    move/from16 v0, v16

    if-lt v0, v1, :cond_12

    const/16 v1, 0x1fd

    move/from16 v0, v16

    if-le v0, v1, :cond_13

    :cond_12
    const/16 v1, 0x82

    move/from16 v0, v16

    if-ne v0, v1, :cond_14

    :cond_13
    const/4 v14, 0x0

    .end local v16    # "tmpDDDNumber":I
    :cond_14
    const/4 v1, 0x4

    if-le v12, v1, :cond_17

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit16 v1, v1, 0x3e8

    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-interface {v4, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    const/4 v2, 0x3

    invoke-interface {v4, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int v16, v1, v2

    .restart local v16    # "tmpDDDNumber":I
    const/16 v1, 0x1f4

    move/from16 v0, v16

    if-lt v0, v1, :cond_15

    const/16 v1, 0x1fd

    move/from16 v0, v16

    if-le v0, v1, :cond_16

    :cond_15
    const/16 v1, 0x82

    move/from16 v0, v16

    if-ne v0, v1, :cond_17

    :cond_16
    const/4 v14, 0x4

    .end local v16    # "tmpDDDNumber":I
    :cond_17
    const/4 v1, 0x6

    if-lt v12, v1, :cond_1d

    const/4 v1, 0x1

    invoke-interface {v4, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1d

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit16 v1, v1, 0x2710

    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-interface {v4, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    const/4 v2, 0x3

    invoke-interface {v4, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    const/4 v2, 0x4

    invoke-interface {v4, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int v16, v1, v2

    .restart local v16    # "tmpDDDNumber":I
    const/4 v9, 0x0

    :goto_3
    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_5_Number:[S

    array-length v1, v1

    if-ge v9, v1, :cond_1d

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_5_Number:[S

    aget-short v1, v1, v9

    move/from16 v0, v16

    if-ne v0, v1, :cond_18

    const/4 v14, 0x5

    :cond_18
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .end local v16    # "tmpDDDNumber":I
    :cond_19
    const/4 v1, 0x0

    invoke-interface {v4, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-interface {v4, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int v16, v1, v2

    .restart local v16    # "tmpDDDNumber":I
    const/4 v9, 0x0

    :goto_4
    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_3_Number:[S

    array-length v1, v1

    if-ge v9, v1, :cond_11

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_3_Number:[S

    aget-short v1, v1, v9

    move/from16 v0, v16

    if-ne v0, v1, :cond_1a

    const/4 v14, 0x3

    :cond_1a
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .end local v16    # "tmpDDDNumber":I
    :cond_1b
    const/4 v1, 0x0

    invoke-interface {v4, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-interface {v4, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int v16, v1, v2

    .restart local v16    # "tmpDDDNumber":I
    const/4 v9, 0x0

    :goto_5
    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_3_Number:[S

    array-length v1, v1

    if-ge v9, v1, :cond_11

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_3_Number:[S

    aget-short v1, v1, v9

    move/from16 v0, v16

    if-ne v0, v1, :cond_1c

    const/4 v14, 0x3

    :cond_1c
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .end local v16    # "tmpDDDNumber":I
    :cond_1d
    const/4 v10, 0x0

    .local v10, "j":I
    if-lez v14, :cond_2b

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_6
    if-ge v9, v12, :cond_1f

    invoke-interface {v4, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x50

    if-eq v1, v2, :cond_1e

    invoke-interface {v4, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x57

    if-ne v1, v2, :cond_23

    :cond_1e
    move v10, v9

    :cond_1f
    if-eqz v10, :cond_24

    move v15, v10

    :cond_20
    :goto_7
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_8
    if-ge v11, v12, :cond_31

    if-ne v11, v14, :cond_21

    if-eqz v11, :cond_21

    const-string v1, "-"

    invoke-interface {v4, v11, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_21
    const/4 v1, 0x4

    if-le v15, v1, :cond_30

    add-int/lit8 v1, v11, 0x1

    if-ne v1, v15, :cond_22

    if-eqz v11, :cond_22

    add-int/lit8 v1, v11, 0x1

    const-string v2, "-"

    invoke-interface {v4, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_22
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .end local v11    # "k":I
    :cond_23
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_24
    sget-boolean v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v1, :cond_25

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tmp1stHyphen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 v1, 0x0

    invoke-interface {v4, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_27

    const/4 v1, 0x1

    invoke-interface {v4, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_27

    const/4 v1, 0x2

    invoke-interface {v4, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_27

    add-int/lit8 v1, v14, 0x8

    if-lt v12, v1, :cond_26

    add-int/lit8 v15, v14, 0x5

    sget-boolean v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v1, :cond_20

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "case 1 tmp2ndHyphen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_26
    add-int/lit8 v15, v14, 0x4

    sget-boolean v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v1, :cond_20

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "case 2 tmp2ndHyphen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_27
    add-int/lit8 v1, v12, -0x1

    invoke-interface {v4, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_29

    add-int/lit8 v1, v14, 0x9

    if-lt v12, v1, :cond_28

    add-int/lit8 v15, v14, 0x5

    sget-boolean v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v1, :cond_20

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "case 3 tmp2ndHyphen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_28
    add-int/lit8 v15, v14, 0x4

    sget-boolean v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v1, :cond_20

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "case 4 tmp2ndHyphen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_29
    add-int/lit8 v1, v14, 0x8

    if-lt v12, v1, :cond_2a

    add-int/lit8 v15, v14, 0x5

    sget-boolean v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v1, :cond_20

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "case 5 tmp2ndHyphen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_2a
    add-int/lit8 v15, v14, 0x4

    sget-boolean v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v1, :cond_20

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "case 6 tmp2ndHyphen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_2b
    const/4 v14, 0x0

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_2c

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_2d

    :cond_2c
    const/4 v15, 0x0

    goto/16 :goto_7

    :cond_2d
    const/16 v1, 0x8

    if-lt v12, v1, :cond_2f

    const/4 v15, 0x4

    :goto_a
    const/4 v1, 0x4

    if-ne v12, v1, :cond_20

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v4, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "050"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {v4, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0130"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_2e
    const/4 v15, 0x0

    goto/16 :goto_7

    :cond_2f
    const/4 v15, 0x3

    goto :goto_a

    .restart local v11    # "k":I
    :cond_30
    if-ne v11, v15, :cond_22

    if-eqz v11, :cond_22

    const-string v1, "-"

    invoke-interface {v4, v11, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_9

    :cond_31
    sget-boolean v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v1, :cond_32

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result tmp1stHyphen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    sget-boolean v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v1, :cond_33

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result tmp2ndHyphen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    sget-boolean v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v1, :cond_34

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "format output = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    :try_start_1
    sget-boolean v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v1, :cond_35

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last oritext = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    sget-boolean v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v1, :cond_36

    if-eqz p0, :cond_36

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oritext.toString() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,oritext.length() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    sget-boolean v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v1, :cond_37

    if-eqz v4, :cond_37

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "text.toString() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,text.length() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    const/4 v2, 0x0

    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v3

    const/4 v5, 0x0

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v6

    move-object/from16 v1, p0

    invoke-interface/range {v1 .. v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v8

    .local v8, "e2":Ljava/lang/Exception;
    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selection Exception oritext = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " e2 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_38

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oritext.toString() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,oritext.length() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    if-eqz v4, :cond_b

    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "text.toString() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,text.length() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
