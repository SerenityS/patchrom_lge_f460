.class Landroid/text/AndroidBidi;
.super Ljava/lang/Object;
.source "AndroidBidi.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bidi(I[C[BIZ)I
    .locals 2
    .param p0, "dir"    # I
    .param p1, "chs"    # [C
    .param p2, "chInfo"    # [B
    .param p3, "n"    # I
    .param p4, "haveInfo"    # Z

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    if-ltz p3, :cond_2

    array-length v1, p1

    if-lt v1, p3, :cond_2

    array-length v1, p2

    if-ge v1, p3, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_3
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/AndroidBidi;->runBidi(I[C[BIZ)I

    move-result v0

    .local v0, "result":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-static {p1, p2, v0, p3}, Landroid/text/TextUtils;->changeBracketRun([C[BII)V

    return v0

    .end local v0    # "result":I
    :pswitch_1
    const/4 p0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 p0, -0x2

    goto :goto_0

    :pswitch_4
    const/4 p0, -0x1

    goto :goto_0

    .restart local v0    # "result":I
    :cond_4
    const/4 v0, -0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static directions(I[BI[CII)Landroid/text/Layout$Directions;
    .locals 30
    .param p0, "dir"    # I
    .param p1, "levels"    # [B
    .param p2, "lstart"    # I
    .param p3, "chars"    # [C
    .param p4, "cstart"    # I
    .param p5, "len"    # I

    .prologue
    if-nez p5, :cond_0

    sget-object v26, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    :goto_0
    return-object v26

    :cond_0
    const/16 v26, 0x1

    move/from16 v0, p0

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    const/4 v2, 0x0

    .local v2, "baseLevel":I
    :goto_1
    aget-byte v5, p1, p2

    .local v5, "curLevel":I
    move/from16 v17, v5

    .local v17, "minLevel":I
    const/16 v21, 0x1

    .local v21, "runCount":I
    const/16 v22, 0x0

    .local v22, "startIsEmoji":Z
    :try_start_0
    invoke-static {}, Lcom/lge/cappuccino/EmojiUtil;->getInstance()Lcom/lge/cappuccino/IEmojiUtil;

    move-result-object v8

    .local v8, "emojiUtil":Lcom/lge/cappuccino/IEmojiUtil;
    sget-boolean v26, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v26, :cond_2

    if-eqz v8, :cond_2

    aget-char v26, p3, p2

    move/from16 v0, v26

    invoke-interface {v8, v0}, Lcom/lge/cappuccino/IEmojiUtil;->quickRejectEmojiCode(C)Z

    move-result v26

    if-nez v26, :cond_2

    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v2, v0, :cond_2

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v4

    .local v4, "codept":I
    invoke-interface {v8, v4}, Lcom/lge/cappuccino/IEmojiUtil;->isInEmojiUnicodeTable(I)Z

    move-result v26

    if-nez v26, :cond_1

    add-int/lit8 v26, p2, 0x3

    add-int v27, p2, p5

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v8, v0, v1}, Lcom/lge/cappuccino/IEmojiUtil;->isDiacriticalMark([CI)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v26

    if-eqz v26, :cond_6

    :cond_1
    const/16 v22, 0x1

    .end local v4    # "codept":I
    :cond_2
    :goto_2
    if-eqz v22, :cond_8

    move/from16 v11, p2

    .local v11, "i":I
    :goto_3
    add-int v7, p2, p5

    .local v7, "e":I
    move v6, v5

    .end local v5    # "curLevel":I
    .local v6, "curLevel":I
    :goto_4
    if-ge v11, v7, :cond_e

    :try_start_1
    sget-boolean v26, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v26, :cond_20

    if-eqz v8, :cond_20

    aget-char v26, p3, v11

    move/from16 v0, v26

    invoke-interface {v8, v0}, Lcom/lge/cappuccino/IEmojiUtil;->quickRejectEmojiCode(C)Z

    move-result v26

    if-nez v26, :cond_20

    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v2, v0, :cond_20

    move-object/from16 v0, p3

    invoke-static {v0, v11}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v4

    .restart local v4    # "codept":I
    invoke-interface {v8, v4}, Lcom/lge/cappuccino/IEmojiUtil;->isInEmojiUnicodeTable(I)Z

    move-result v26

    if-nez v26, :cond_3

    add-int/lit8 v26, v11, 0x3

    move/from16 v0, v26

    if-ge v0, v7, :cond_9

    move-object/from16 v0, p3

    invoke-interface {v8, v0, v11}, Lcom/lge/cappuccino/IEmojiUtil;->isDiacriticalMark([CI)Z

    move-result v26

    if-eqz v26, :cond_9

    :cond_3
    move/from16 v0, p2

    if-ne v11, v0, :cond_22

    int-to-byte v5, v2

    aput-byte v5, p1, p2
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v6    # "curLevel":I
    .restart local v5    # "curLevel":I
    move/from16 v17, v5

    :goto_5
    add-int/lit8 v26, v11, 0x1

    int-to-byte v0, v2

    move/from16 v27, v0

    :try_start_2
    aput-byte v27, p1, v26

    aput-byte v27, p1, v11

    .end local v4    # "codept":I
    :goto_6
    aget-byte v13, p1, v11

    .local v13, "level":I
    if-eq v13, v5, :cond_4

    move v5, v13

    add-int/lit8 v21, v21, 0x1

    :cond_4
    add-int/lit8 v11, v11, 0x1

    move v6, v5

    .end local v5    # "curLevel":I
    .restart local v6    # "curLevel":I
    goto :goto_4

    .end local v2    # "baseLevel":I
    .end local v6    # "curLevel":I
    .end local v7    # "e":I
    .end local v8    # "emojiUtil":Lcom/lge/cappuccino/IEmojiUtil;
    .end local v11    # "i":I
    .end local v13    # "level":I
    .end local v17    # "minLevel":I
    .end local v21    # "runCount":I
    .end local v22    # "startIsEmoji":Z
    :cond_5
    const/4 v2, 0x1

    goto/16 :goto_1

    .restart local v2    # "baseLevel":I
    .restart local v4    # "codept":I
    .restart local v5    # "curLevel":I
    .restart local v8    # "emojiUtil":Lcom/lge/cappuccino/IEmojiUtil;
    .restart local v17    # "minLevel":I
    .restart local v21    # "runCount":I
    .restart local v22    # "startIsEmoji":Z
    :cond_6
    aget-char v26, p3, p2

    move/from16 v0, v26

    invoke-interface {v8, v0}, Lcom/lge/cappuccino/IEmojiUtil;->isInEmojiUnicodeTable(C)Z

    move-result v26

    if-eqz v26, :cond_7

    const/16 v22, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v26, p2, 0x3

    add-int v27, p2, p5

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v8, v0, v1}, Lcom/lge/cappuccino/IEmojiUtil;->isInCountryCodeTable([CI)Z
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v26

    if-eqz v26, :cond_2

    const/16 v22, 0x1

    goto :goto_2

    .end local v4    # "codept":I
    :cond_8
    add-int/lit8 v11, p2, 0x1

    goto :goto_3

    .end local v5    # "curLevel":I
    .restart local v4    # "codept":I
    .restart local v6    # "curLevel":I
    .restart local v7    # "e":I
    .restart local v11    # "i":I
    :cond_9
    :try_start_3
    aget-char v26, p3, v11

    move/from16 v0, v26

    invoke-interface {v8, v0}, Lcom/lge/cappuccino/IEmojiUtil;->isInEmojiUnicodeTable(C)Z

    move-result v26

    if-eqz v26, :cond_d

    move/from16 v0, p2

    if-ne v11, v0, :cond_21

    int-to-byte v5, v2

    aput-byte v5, p1, p2
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v6    # "curLevel":I
    .restart local v5    # "curLevel":I
    move/from16 v17, v5

    :goto_7
    int-to-byte v0, v2

    move/from16 v26, v0

    :try_start_4
    aput-byte v26, p1, v11
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    .end local v4    # "codept":I
    .end local v7    # "e":I
    .end local v8    # "emojiUtil":Lcom/lge/cappuccino/IEmojiUtil;
    .end local v11    # "i":I
    :catch_0
    move-exception v9

    .local v9, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_8
    invoke-virtual {v9}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .end local v9    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_9
    move/from16 v24, p5

    .local v24, "visLen":I
    and-int/lit8 v26, v5, 0x1

    and-int/lit8 v27, v2, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_c

    :cond_a
    add-int/lit8 v24, v24, -0x1

    if-ltz v24, :cond_b

    add-int v26, p4, v24

    aget-char v3, p3, v26

    .local v3, "ch":C
    const/16 v26, 0xa

    move/from16 v0, v26

    if-ne v3, v0, :cond_f

    add-int/lit8 v24, v24, -0x1

    .end local v3    # "ch":C
    :cond_b
    :goto_a
    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move/from16 v1, p5

    if-eq v0, v1, :cond_c

    add-int/lit8 v21, v21, 0x1

    :cond_c
    const/16 v26, 0x1

    move/from16 v0, v21

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    move/from16 v0, v17

    if-ne v0, v2, :cond_11

    and-int/lit8 v26, v17, 0x1

    if-eqz v26, :cond_10

    sget-object v26, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    goto/16 :goto_0

    .end local v5    # "curLevel":I
    .end local v24    # "visLen":I
    .restart local v4    # "codept":I
    .restart local v6    # "curLevel":I
    .restart local v7    # "e":I
    .restart local v8    # "emojiUtil":Lcom/lge/cappuccino/IEmojiUtil;
    .restart local v11    # "i":I
    :cond_d
    add-int/lit8 v26, v11, 0x3

    move/from16 v0, v26

    if-ge v0, v7, :cond_20

    :try_start_5
    move-object/from16 v0, p3

    invoke-interface {v8, v0, v11}, Lcom/lge/cappuccino/IEmojiUtil;->isInCountryCodeTable([CI)Z

    move-result v26

    if-eqz v26, :cond_20

    move/from16 v0, p2

    if-ne v11, v0, :cond_1f

    int-to-byte v5, v2

    aput-byte v5, p1, p2
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    .end local v6    # "curLevel":I
    .restart local v5    # "curLevel":I
    move/from16 v17, v5

    :goto_b
    add-int/lit8 v26, v11, 0x1

    add-int/lit8 v27, v11, 0x2

    add-int/lit8 v28, v11, 0x3

    int-to-byte v0, v2

    move/from16 v29, v0

    :try_start_6
    aput-byte v29, p1, v28

    aput-byte v29, p1, v27

    aput-byte v29, p1, v26

    aput-byte v29, p1, v11
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_6

    .end local v4    # "codept":I
    .end local v5    # "curLevel":I
    .restart local v6    # "curLevel":I
    :cond_e
    move v5, v6

    .end local v6    # "curLevel":I
    .restart local v5    # "curLevel":I
    goto :goto_9

    .end local v7    # "e":I
    .end local v8    # "emojiUtil":Lcom/lge/cappuccino/IEmojiUtil;
    .end local v11    # "i":I
    .restart local v3    # "ch":C
    .restart local v24    # "visLen":I
    :cond_f
    const/16 v26, 0x20

    move/from16 v0, v26

    if-eq v3, v0, :cond_a

    const/16 v26, 0x9

    move/from16 v0, v26

    if-eq v3, v0, :cond_a

    goto :goto_a

    .end local v3    # "ch":C
    :cond_10
    sget-object v26, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    goto/16 :goto_0

    :cond_11
    mul-int/lit8 v26, v21, 0x2

    move/from16 v0, v26

    new-array v12, v0, [I

    .local v12, "ld":[I
    move/from16 v16, v17

    .local v16, "maxLevel":I
    shl-int/lit8 v14, v17, 0x1a

    .local v14, "levelBits":I
    const/16 v18, 0x1

    .local v18, "n":I
    move/from16 v20, p2

    .local v20, "prev":I
    move/from16 v5, v17

    move/from16 v11, p2

    .restart local v11    # "i":I
    add-int v7, p2, v24

    .restart local v7    # "e":I
    move/from16 v19, v18

    .end local v18    # "n":I
    .local v19, "n":I
    :goto_c
    if-ge v11, v7, :cond_14

    aget-byte v13, p1, v11

    .restart local v13    # "level":I
    if-eq v13, v5, :cond_1e

    move v5, v13

    move/from16 v0, v16

    if-le v13, v0, :cond_13

    move/from16 v16, v13

    :cond_12
    :goto_d
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "n":I
    .restart local v18    # "n":I
    sub-int v26, v11, v20

    or-int v26, v26, v14

    aput v26, v12, v19

    add-int/lit8 v19, v18, 0x1

    .end local v18    # "n":I
    .restart local v19    # "n":I
    sub-int v26, v11, p2

    aput v26, v12, v18

    shl-int/lit8 v14, v5, 0x1a

    move/from16 v20, v11

    move/from16 v18, v19

    .end local v19    # "n":I
    .restart local v18    # "n":I
    :goto_e
    add-int/lit8 v11, v11, 0x1

    move/from16 v19, v18

    .end local v18    # "n":I
    .restart local v19    # "n":I
    goto :goto_c

    :cond_13
    move/from16 v0, v17

    if-ge v13, v0, :cond_12

    move/from16 v17, v13

    goto :goto_d

    .end local v13    # "level":I
    :cond_14
    add-int v26, p2, v24

    sub-int v26, v26, v20

    or-int v26, v26, v14

    aput v26, v12, v19

    move/from16 v0, v24

    move/from16 v1, p5

    if-ge v0, v1, :cond_1d

    add-int/lit8 v18, v19, 0x1

    .end local v19    # "n":I
    .restart local v18    # "n":I
    aput v24, v12, v18

    add-int/lit8 v18, v18, 0x1

    sub-int v26, p5, v24

    shl-int/lit8 v27, v2, 0x1a

    or-int v26, v26, v27

    aput v26, v12, v18

    :goto_f
    and-int/lit8 v26, v17, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_16

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_15

    const/16 v23, 0x1

    .local v23, "swap":Z
    :goto_10
    if-eqz v23, :cond_1c

    add-int/lit8 v13, v16, -0x1

    .restart local v13    # "level":I
    :goto_11
    move/from16 v0, v17

    if-lt v13, v0, :cond_1c

    const/4 v11, 0x0

    :goto_12
    array-length v0, v12

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v11, v0, :cond_1b

    aget v26, v12, v11

    aget-byte v26, p1, v26

    move/from16 v0, v26

    if-lt v0, v13, :cond_1a

    add-int/lit8 v7, v11, 0x2

    :goto_13
    array-length v0, v12

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v7, v0, :cond_18

    aget v26, v12, v7

    aget-byte v26, p1, v26

    move/from16 v0, v26

    if-lt v0, v13, :cond_18

    add-int/lit8 v7, v7, 0x2

    goto :goto_13

    .end local v13    # "level":I
    .end local v23    # "swap":Z
    :cond_15
    const/16 v23, 0x0

    goto :goto_10

    :cond_16
    const/16 v26, 0x1

    move/from16 v0, v21

    move/from16 v1, v26

    if-le v0, v1, :cond_17

    const/16 v23, 0x1

    .restart local v23    # "swap":Z
    :goto_14
    goto :goto_10

    .end local v23    # "swap":Z
    :cond_17
    const/16 v23, 0x0

    goto :goto_14

    .restart local v13    # "level":I
    .restart local v23    # "swap":Z
    :cond_18
    move v15, v11

    .local v15, "low":I
    add-int/lit8 v10, v7, -0x2

    .local v10, "hi":I
    :goto_15
    if-ge v15, v10, :cond_19

    aget v25, v12, v15

    .local v25, "x":I
    aget v26, v12, v10

    aput v26, v12, v15

    aput v25, v12, v10

    add-int/lit8 v26, v15, 0x1

    aget v25, v12, v26

    add-int/lit8 v26, v15, 0x1

    add-int/lit8 v27, v10, 0x1

    aget v27, v12, v27

    aput v27, v12, v26

    add-int/lit8 v26, v10, 0x1

    aput v25, v12, v26

    add-int/lit8 v15, v15, 0x2

    add-int/lit8 v10, v10, -0x2

    goto :goto_15

    .end local v25    # "x":I
    :cond_19
    add-int/lit8 v11, v7, 0x2

    .end local v10    # "hi":I
    .end local v15    # "low":I
    :cond_1a
    add-int/lit8 v11, v11, 0x2

    goto :goto_12

    :cond_1b
    add-int/lit8 v13, v13, -0x1

    goto :goto_11

    .end local v13    # "level":I
    :cond_1c
    new-instance v26, Landroid/text/Layout$Directions;

    move-object/from16 v0, v26

    invoke-direct {v0, v12}, Landroid/text/Layout$Directions;-><init>([I)V

    goto/16 :goto_0

    .end local v5    # "curLevel":I
    .end local v12    # "ld":[I
    .end local v14    # "levelBits":I
    .end local v16    # "maxLevel":I
    .end local v18    # "n":I
    .end local v20    # "prev":I
    .end local v23    # "swap":Z
    .end local v24    # "visLen":I
    .restart local v6    # "curLevel":I
    .restart local v8    # "emojiUtil":Lcom/lge/cappuccino/IEmojiUtil;
    :catch_1
    move-exception v9

    move v5, v6

    .end local v6    # "curLevel":I
    .restart local v5    # "curLevel":I
    goto/16 :goto_8

    .end local v8    # "emojiUtil":Lcom/lge/cappuccino/IEmojiUtil;
    .restart local v12    # "ld":[I
    .restart local v14    # "levelBits":I
    .restart local v16    # "maxLevel":I
    .restart local v19    # "n":I
    .restart local v20    # "prev":I
    .restart local v24    # "visLen":I
    :cond_1d
    move/from16 v18, v19

    .end local v19    # "n":I
    .restart local v18    # "n":I
    goto/16 :goto_f

    .end local v18    # "n":I
    .restart local v13    # "level":I
    .restart local v19    # "n":I
    :cond_1e
    move/from16 v18, v19

    .end local v19    # "n":I
    .restart local v18    # "n":I
    goto/16 :goto_e

    .end local v5    # "curLevel":I
    .end local v12    # "ld":[I
    .end local v13    # "level":I
    .end local v14    # "levelBits":I
    .end local v16    # "maxLevel":I
    .end local v18    # "n":I
    .end local v20    # "prev":I
    .end local v24    # "visLen":I
    .restart local v4    # "codept":I
    .restart local v6    # "curLevel":I
    .restart local v8    # "emojiUtil":Lcom/lge/cappuccino/IEmojiUtil;
    :cond_1f
    move v5, v6

    .end local v6    # "curLevel":I
    .restart local v5    # "curLevel":I
    goto/16 :goto_b

    .end local v4    # "codept":I
    .end local v5    # "curLevel":I
    .restart local v6    # "curLevel":I
    :cond_20
    move v5, v6

    .end local v6    # "curLevel":I
    .restart local v5    # "curLevel":I
    goto/16 :goto_6

    .end local v5    # "curLevel":I
    .restart local v4    # "codept":I
    .restart local v6    # "curLevel":I
    :cond_21
    move v5, v6

    .end local v6    # "curLevel":I
    .restart local v5    # "curLevel":I
    goto/16 :goto_7

    .end local v5    # "curLevel":I
    .restart local v6    # "curLevel":I
    :cond_22
    move v5, v6

    .end local v6    # "curLevel":I
    .restart local v5    # "curLevel":I
    goto/16 :goto_5
.end method

.method private static native runBidi(I[C[BIZ)I
.end method
