.class public interface abstract Lcom/lge/cappuccino/IEmojiUtil;
.super Ljava/lang/Object;
.source "IEmojiUtil.java"


# virtual methods
.method public abstract filterEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.end method

.method public abstract filterEmoji(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract hasEmoji(Ljava/lang/CharSequence;)Z
.end method

.method public abstract hasSurrogatePairEmoji(Ljava/lang/CharSequence;)Z
.end method

.method public abstract isDiacriticalMark(Ljava/lang/CharSequence;I)Z
.end method

.method public abstract isDiacriticalMark([CI)Z
.end method

.method public abstract isInCountryCodeTable(Ljava/lang/CharSequence;I)Z
.end method

.method public abstract isInCountryCodeTable([CI)Z
.end method

.method public abstract isInEmojiUnicodeTable(C)Z
.end method

.method public abstract isInEmojiUnicodeTable(I)Z
.end method

.method public abstract lengthEmoji(Ljava/lang/CharSequence;)I
.end method

.method public abstract quickRejectEmojiCode(C)Z
.end method
