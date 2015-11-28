.class public Lcom/android/internal/telephony/GsmAlphabet;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;,
        Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final GSM_EXTENDED_ESCAPE:B = 0x1bt

.field private static final TAG:Ljava/lang/String; = "GSM"

.field public static final UDH_SEPTET_COST_CONCATENATED_MESSAGE:I = 0x6

.field public static final UDH_SEPTET_COST_LENGTH:I = 0x1

.field public static final UDH_SEPTET_COST_ONE_SHIFT_TABLE:I = 0x4

.field public static final UDH_SEPTET_COST_TWO_SHIFT_TABLES:I = 0x7

.field private static final charToGsmBasicLatin:Landroid/util/SparseIntArray;

.field private static final charToGsmCyrillic:Landroid/util/SparseIntArray;

.field private static final charToGsmGeneralPunctuation:Landroid/util/SparseIntArray;

.field private static final charToGsmGreekCoptic:Landroid/util/SparseIntArray;

.field private static final charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

.field private static final charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

.field private static final charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

.field private static final sCharsToGsmTables:[Landroid/util/SparseIntArray;

.field private static final sCharsToShiftTables:[Landroid/util/SparseIntArray;

.field private static sDisableCountryEncodingCheck:Z

.field private static sEnabledLockingShiftTables:[I

.field private static sEnabledSingleShiftTables:[I

.field private static sHighestEnabledSingleShiftCode:I

.field private static final sLanguageShiftTables:[Ljava/lang/String;

.field private static final sLanguageTables:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    .line 1500
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z

    .line 1542
    const/16 v11, 0xe

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "@\u00a3$\u00a5\u00e8\u00e9\u00f9\u00ec\u00f2\u00c7\n\u00d8\u00f8\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u00c6\u00e6\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u00a1ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00bfabcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "@\u00a3$\u00a5\u20ac\u00e9\u00f9\u0131\u00f2\u00c7\n\u011e\u011f\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u015e\u015f\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u0130ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00e7abcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, ""

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string v13, "@\u00a3$\u00a5\u00ea\u00e9\u00fa\u00ed\u00f3\u00e7\n\u00d4\u00f4\r\u00c1\u00e1\u0394_\u00aa\u00c7\u00c0\u221e^\\\u20ac\u00d3|\uffff\u00c2\u00e2\u00ca\u00c9 !\"#\u00ba%&\'()*+,-./0123456789:;<=>?\u00cdABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c3\u00d5\u00da\u00dc\u00a7~abcdefghijklmnopqrstuvwxyz\u00e3\u00f5`\u00fc\u00e0"

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string v13, "\u0981\u0982\u0983\u0985\u0986\u0987\u0988\u0989\u098a\u098b\n\u098c \r \u098f\u0990  \u0993\u0994\u0995\u0996\u0997\u0998\u0999\u099a\uffff\u099b\u099c\u099d\u099e !\u099f\u09a0\u09a1\u09a2\u09a3\u09a4)(\u09a5\u09a6,\u09a7.\u09a80123456789:; \u09aa\u09ab?\u09ac\u09ad\u09ae\u09af\u09b0 \u09b2   \u09b6\u09b7\u09b8\u09b9\u09bc\u09bd\u09be\u09bf\u09c0\u09c1\u09c2\u09c3\u09c4  \u09c7\u09c8  \u09cb\u09cc\u09cd\u09ceabcdefghijklmnopqrstuvwxyz\u09d7\u09dc\u09dd\u09f0\u09f1"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    const-string v13, "\u0a81\u0a82\u0a83\u0a85\u0a86\u0a87\u0a88\u0a89\u0a8a\u0a8b\n\u0a8c\u0a8d\r \u0a8f\u0a90\u0a91 \u0a93\u0a94\u0a95\u0a96\u0a97\u0a98\u0a99\u0a9a\uffff\u0a9b\u0a9c\u0a9d\u0a9e !\u0a9f\u0aa0\u0aa1\u0aa2\u0aa3\u0aa4)(\u0aa5\u0aa6,\u0aa7.\u0aa80123456789:; \u0aaa\u0aab?\u0aac\u0aad\u0aae\u0aaf\u0ab0 \u0ab2\u0ab3 \u0ab5\u0ab6\u0ab7\u0ab8\u0ab9\u0abc\u0abd\u0abe\u0abf\u0ac0\u0ac1\u0ac2\u0ac3\u0ac4\u0ac5 \u0ac7\u0ac8\u0ac9 \u0acb\u0acc\u0acd\u0ad0abcdefghijklmnopqrstuvwxyz\u0ae0\u0ae1\u0ae2\u0ae3\u0af1"

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const-string v13, "\u0901\u0902\u0903\u0905\u0906\u0907\u0908\u0909\u090a\u090b\n\u090c\u090d\r\u090e\u090f\u0910\u0911\u0912\u0913\u0914\u0915\u0916\u0917\u0918\u0919\u091a\uffff\u091b\u091c\u091d\u091e !\u091f\u0920\u0921\u0922\u0923\u0924)(\u0925\u0926,\u0927.\u09280123456789:;\u0929\u092a\u092b?\u092c\u092d\u092e\u092f\u0930\u0931\u0932\u0933\u0934\u0935\u0936\u0937\u0938\u0939\u093c\u093d\u093e\u093f\u0940\u0941\u0942\u0943\u0944\u0945\u0946\u0947\u0948\u0949\u094a\u094b\u094c\u094d\u0950abcdefghijklmnopqrstuvwxyz\u0972\u097b\u097c\u097e\u097f"

    aput-object v13, v11, v12

    const/4 v12, 0x7

    const-string v13, " \u0c82\u0c83\u0c85\u0c86\u0c87\u0c88\u0c89\u0c8a\u0c8b\n\u0c8c \r\u0c8e\u0c8f\u0c90 \u0c92\u0c93\u0c94\u0c95\u0c96\u0c97\u0c98\u0c99\u0c9a\uffff\u0c9b\u0c9c\u0c9d\u0c9e !\u0c9f\u0ca0\u0ca1\u0ca2\u0ca3\u0ca4)(\u0ca5\u0ca6,\u0ca7.\u0ca80123456789:; \u0caa\u0cab?\u0cac\u0cad\u0cae\u0caf\u0cb0\u0cb1\u0cb2\u0cb3 \u0cb5\u0cb6\u0cb7\u0cb8\u0cb9\u0cbc\u0cbd\u0cbe\u0cbf\u0cc0\u0cc1\u0cc2\u0cc3\u0cc4 \u0cc6\u0cc7\u0cc8 \u0cca\u0ccb\u0ccc\u0ccd\u0cd5abcdefghijklmnopqrstuvwxyz\u0cd6\u0ce0\u0ce1\u0ce2\u0ce3"

    aput-object v13, v11, v12

    const/16 v12, 0x8

    const-string v13, " \u0d02\u0d03\u0d05\u0d06\u0d07\u0d08\u0d09\u0d0a\u0d0b\n\u0d0c \r\u0d0e\u0d0f\u0d10 \u0d12\u0d13\u0d14\u0d15\u0d16\u0d17\u0d18\u0d19\u0d1a\uffff\u0d1b\u0d1c\u0d1d\u0d1e !\u0d1f\u0d20\u0d21\u0d22\u0d23\u0d24)(\u0d25\u0d26,\u0d27.\u0d280123456789:; \u0d2a\u0d2b?\u0d2c\u0d2d\u0d2e\u0d2f\u0d30\u0d31\u0d32\u0d33\u0d34\u0d35\u0d36\u0d37\u0d38\u0d39 \u0d3d\u0d3e\u0d3f\u0d40\u0d41\u0d42\u0d43\u0d44 \u0d46\u0d47\u0d48 \u0d4a\u0d4b\u0d4c\u0d4d\u0d57abcdefghijklmnopqrstuvwxyz\u0d60\u0d61\u0d62\u0d63\u0d79"

    aput-object v13, v11, v12

    const/16 v12, 0x9

    const-string v13, "\u0b01\u0b02\u0b03\u0b05\u0b06\u0b07\u0b08\u0b09\u0b0a\u0b0b\n\u0b0c \r \u0b0f\u0b10  \u0b13\u0b14\u0b15\u0b16\u0b17\u0b18\u0b19\u0b1a\uffff\u0b1b\u0b1c\u0b1d\u0b1e !\u0b1f\u0b20\u0b21\u0b22\u0b23\u0b24)(\u0b25\u0b26,\u0b27.\u0b280123456789:; \u0b2a\u0b2b?\u0b2c\u0b2d\u0b2e\u0b2f\u0b30 \u0b32\u0b33 \u0b35\u0b36\u0b37\u0b38\u0b39\u0b3c\u0b3d\u0b3e\u0b3f\u0b40\u0b41\u0b42\u0b43\u0b44  \u0b47\u0b48  \u0b4b\u0b4c\u0b4d\u0b56abcdefghijklmnopqrstuvwxyz\u0b57\u0b60\u0b61\u0b62\u0b63"

    aput-object v13, v11, v12

    const/16 v12, 0xa

    const-string v13, "\u0a01\u0a02\u0a03\u0a05\u0a06\u0a07\u0a08\u0a09\u0a0a \n  \r \u0a0f\u0a10  \u0a13\u0a14\u0a15\u0a16\u0a17\u0a18\u0a19\u0a1a\uffff\u0a1b\u0a1c\u0a1d\u0a1e !\u0a1f\u0a20\u0a21\u0a22\u0a23\u0a24)(\u0a25\u0a26,\u0a27.\u0a280123456789:; \u0a2a\u0a2b?\u0a2c\u0a2d\u0a2e\u0a2f\u0a30 \u0a32\u0a33 \u0a35\u0a36 \u0a38\u0a39\u0a3c \u0a3e\u0a3f\u0a40\u0a41\u0a42    \u0a47\u0a48  \u0a4b\u0a4c\u0a4d\u0a51abcdefghijklmnopqrstuvwxyz\u0a70\u0a71\u0a72\u0a73\u0a74"

    aput-object v13, v11, v12

    const/16 v12, 0xb

    const-string v13, " \u0b82\u0b83\u0b85\u0b86\u0b87\u0b88\u0b89\u0b8a \n  \r\u0b8e\u0b8f\u0b90 \u0b92\u0b93\u0b94\u0b95   \u0b99\u0b9a\uffff \u0b9c \u0b9e !\u0b9f   \u0ba3\u0ba4)(  , .\u0ba80123456789:;\u0ba9\u0baa ?  \u0bae\u0baf\u0bb0\u0bb1\u0bb2\u0bb3\u0bb4\u0bb5\u0bb6\u0bb7\u0bb8\u0bb9  \u0bbe\u0bbf\u0bc0\u0bc1\u0bc2   \u0bc6\u0bc7\u0bc8 \u0bca\u0bcb\u0bcc\u0bcd\u0bd0abcdefghijklmnopqrstuvwxyz\u0bd7\u0bf0\u0bf1\u0bf2\u0bf9"

    aput-object v13, v11, v12

    const/16 v12, 0xc

    const-string v13, "\u0c01\u0c02\u0c03\u0c05\u0c06\u0c07\u0c08\u0c09\u0c0a\u0c0b\n\u0c0c \r\u0c0e\u0c0f\u0c10 \u0c12\u0c13\u0c14\u0c15\u0c16\u0c17\u0c18\u0c19\u0c1a\uffff\u0c1b\u0c1c\u0c1d\u0c1e !\u0c1f\u0c20\u0c21\u0c22\u0c23\u0c24)(\u0c25\u0c26,\u0c27.\u0c280123456789:; \u0c2a\u0c2b?\u0c2c\u0c2d\u0c2e\u0c2f\u0c30\u0c31\u0c32\u0c33 \u0c35\u0c36\u0c37\u0c38\u0c39 \u0c3d\u0c3e\u0c3f\u0c40\u0c41\u0c42\u0c43\u0c44 \u0c46\u0c47\u0c48 \u0c4a\u0c4b\u0c4c\u0c4d\u0c55abcdefghijklmnopqrstuvwxyz\u0c56\u0c60\u0c61\u0c62\u0c63"

    aput-object v13, v11, v12

    const/16 v12, 0xd

    const-string v13, "\u0627\u0622\u0628\u067b\u0680\u067e\u06a6\u062a\u06c2\u067f\n\u0679\u067d\r\u067a\u067c\u062b\u062c\u0681\u0684\u0683\u0685\u0686\u0687\u062d\u062e\u062f\uffff\u068c\u0688\u0689\u068a !\u068f\u068d\u0630\u0631\u0691\u0693)(\u0699\u0632,\u0696.\u06980123456789:;\u069a\u0633\u0634?\u0635\u0636\u0637\u0638\u0639\u0641\u0642\u06a9\u06aa\u06ab\u06af\u06b3\u06b1\u0644\u0645\u0646\u06ba\u06bb\u06bc\u0648\u06c4\u06d5\u06c1\u06be\u0621\u06cc\u06d0\u06d2\u064d\u0650\u064f\u0657\u0654abcdefghijklmnopqrstuvwxyz\u0655\u0651\u0653\u0656\u0670"

    aput-object v13, v11, v12

    sput-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    .line 1735
    const/16 v11, 0xe

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "          \u000c         ^                   {}     \\            [~] |                                    \u20ac                          "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "          \u000c         ^                   {}     \\            [~] |      \u011e \u0130         \u015e               \u00e7 \u20ac \u011f \u0131         \u015f            "

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "         \u00e7\u000c         ^                   {}     \\            [~] |\u00c1       \u00cd     \u00d3     \u00da           \u00e1   \u20ac   \u00ed     \u00f3     \u00fa          "

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string v13, "     \u00ea   \u00e7\u000c\u00d4\u00f4 \u00c1\u00e1  \u03a6\u0393^\u03a9\u03a0\u03a8\u03a3\u0398     \u00ca        {}     \\            [~] |\u00c0       \u00cd     \u00d3     \u00da     \u00c3\u00d5    \u00c2   \u20ac   \u00ed     \u00f3     \u00fa     \u00e3\u00f5  \u00e2"

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string v13, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u09e6\u09e7 \u09e8\u09e9\u09ea\u09eb\u09ec\u09ed\u09ee\u09ef\u09df\u09e0\u09e1\u09e2{}\u09e3\u09f2\u09f3\u09f4\u09f5\\\u09f6\u09f7\u09f8\u09f9\u09fa       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v13, v11, v12

    const/4 v12, 0x5

    const-string v13, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ae6\u0ae7\u0ae8\u0ae9\u0aea\u0aeb\u0aec\u0aed\u0aee\u0aef  {}     \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const-string v13, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0966\u0967\u0968\u0969\u096a\u096b\u096c\u096d\u096e\u096f\u0951\u0952{}\u0953\u0954\u0958\u0959\u095a\\\u095b\u095c\u095d\u095e\u095f\u0960\u0961\u0962\u0963\u0970\u0971 [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v13, v11, v12

    const/4 v12, 0x7

    const-string v13, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ce6\u0ce7\u0ce8\u0ce9\u0cea\u0ceb\u0cec\u0ced\u0cee\u0cef\u0cde\u0cf1{}\u0cf2    \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v13, v11, v12

    const/16 v12, 0x8

    const-string v13, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0d66\u0d67\u0d68\u0d69\u0d6a\u0d6b\u0d6c\u0d6d\u0d6e\u0d6f\u0d70\u0d71{}\u0d72\u0d73\u0d74\u0d75\u0d7a\\\u0d7b\u0d7c\u0d7d\u0d7e\u0d7f       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v13, v11, v12

    const/16 v12, 0x9

    const-string v13, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0b66\u0b67\u0b68\u0b69\u0b6a\u0b6b\u0b6c\u0b6d\u0b6e\u0b6f\u0b5c\u0b5d{}\u0b5f\u0b70\u0b71  \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v13, v11, v12

    const/16 v12, 0xa

    const-string v13, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0a66\u0a67\u0a68\u0a69\u0a6a\u0a6b\u0a6c\u0a6d\u0a6e\u0a6f\u0a59\u0a5a{}\u0a5b\u0a5c\u0a5e\u0a75 \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v13, v11, v12

    const/16 v12, 0xb

    const-string v13, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0be6\u0be7\u0be8\u0be9\u0bea\u0beb\u0bec\u0bed\u0bee\u0bef\u0bf3\u0bf4{}\u0bf5\u0bf6\u0bf7\u0bf8\u0bfa\\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v13, v11, v12

    const/16 v12, 0xc

    const-string v13, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*   \u0c66\u0c67\u0c68\u0c69\u0c6a\u0c6b\u0c6c\u0c6d\u0c6e\u0c6f\u0c58\u0c59{}\u0c78\u0c79\u0c7a\u0c7b\u0c7c\\\u0c7d\u0c7e\u0c7f         [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v13, v11, v12

    const/16 v12, 0xd

    const-string v13, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0600\u0601 \u06f0\u06f1\u06f2\u06f3\u06f4\u06f5\u06f6\u06f7\u06f8\u06f9\u060c\u060d{}\u060e\u060f\u0610\u0611\u0612\\\u0613\u0614\u061b\u061f\u0640\u0652\u0658\u066b\u066c\u0672\u0673\u06cd[~]\u06d4|ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v13, v11, v12

    sput-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    .line 1874
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v6, v11

    .line 1875
    .local v6, "numTables":I
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v5, v11

    .line 1876
    .local v5, "numShiftTables":I
    if-eq v6, v5, :cond_0

    .line 1877
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error: language tables array length "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " != shift tables array length "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->setEnabledShiftTablesLG()V

    .line 1888
    new-array v11, v6, [Landroid/util/SparseIntArray;

    sput-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    .line 1889
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_3

    .line 1890
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v9, v11, v3

    .line 1892
    .local v9, "table":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    .line 1893
    .local v10, "tableLen":I
    if-eqz v10, :cond_1

    const/16 v11, 0x80

    if-eq v10, v11, :cond_1

    .line 1894
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error: language tables index "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " length "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (expected 128 or 0)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    :cond_1
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v10}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1899
    .local v1, "charToGsmTable":Landroid/util/SparseIntArray;
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aput-object v1, v11, v3

    .line 1900
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v10, :cond_2

    .line 1901
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1902
    .local v0, "c":C
    invoke-virtual {v1, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1900
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1889
    .end local v0    # "c":C
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1906
    .end local v1    # "charToGsmTable":Landroid/util/SparseIntArray;
    .end local v4    # "j":I
    .end local v9    # "table":Ljava/lang/String;
    .end local v10    # "tableLen":I
    :cond_3
    new-array v11, v6, [Landroid/util/SparseIntArray;

    sput-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    .line 1907
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_7

    .line 1908
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v7, v11, v3

    .line 1910
    .local v7, "shiftTable":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 1911
    .local v8, "shiftTableLen":I
    if-eqz v8, :cond_4

    const/16 v11, 0x80

    if-eq v8, v11, :cond_4

    .line 1912
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error: language shift tables index "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " length "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (expected 128 or 0)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    :cond_4
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1917
    .local v2, "charToShiftTable":Landroid/util/SparseIntArray;
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aput-object v2, v11, v3

    .line 1918
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_3
    if-ge v4, v8, :cond_6

    .line 1919
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1920
    .restart local v0    # "c":C
    const/16 v11, 0x20

    if-eq v0, v11, :cond_5

    .line 1921
    invoke-virtual {v2, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1918
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1907
    .end local v0    # "c":C
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1928
    .end local v2    # "charToShiftTable":Landroid/util/SparseIntArray;
    .end local v4    # "j":I
    .end local v7    # "shiftTable":Ljava/lang/String;
    .end local v8    # "shiftTableLen":I
    :cond_7
    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmBasicLatin:Landroid/util/SparseIntArray;

    .line 1929
    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    .line 1930
    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    .line 1931
    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    .line 1932
    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    .line 1933
    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmCyrillic:Landroid/util/SparseIntArray;

    .line 1934
    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGeneralPunctuation:Landroid/util/SparseIntArray;

    .line 1937
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xe1

    const/16 v13, 0x61

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1938
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xe2

    const/16 v13, 0x61

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1939
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xe3

    const/16 v13, 0x61

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1940
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x101

    const/16 v13, 0x61

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1941
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x103

    const/16 v13, 0x61

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1942
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x105

    const/16 v13, 0x61

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1943
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1ce

    const/16 v13, 0x61

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1944
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1df

    const/16 v13, 0x61

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1945
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1e1

    const/16 v13, 0x61

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1946
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1fb

    const/16 v13, 0x61

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1947
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x201

    const/16 v13, 0x61

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1948
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x203

    const/16 v13, 0x61

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1949
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x227

    const/16 v13, 0x61

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1950
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x180

    const/16 v13, 0x62

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1951
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x182

    const/16 v13, 0x62

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1952
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x183

    const/16 v13, 0x62

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1953
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x184

    const/16 v13, 0x62

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1954
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x185

    const/16 v13, 0x62

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1956
    const/4 v11, 0x0

    const-string v12, "VIVO_UCS2GSM_Encoding"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    .line 1957
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xe7

    const/16 v13, 0x9

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1962
    :goto_4
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x107

    const/16 v13, 0x63

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1963
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x109

    const/16 v13, 0x63

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1964
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x10b

    const/16 v13, 0x63

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1965
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x10d

    const/16 v13, 0x63

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1966
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x188

    const/16 v13, 0x63

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1967
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x10f

    const/16 v13, 0x64

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1968
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x111

    const/16 v13, 0x64

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1969
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x18b

    const/16 v13, 0x64

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1970
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x18c

    const/16 v13, 0x64

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1971
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x221

    const/16 v13, 0x64

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1972
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xea

    const/16 v13, 0x65

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1973
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xeb

    const/16 v13, 0x65

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1974
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x113

    const/16 v13, 0x65

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1975
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x115

    const/16 v13, 0x65

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1976
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x117

    const/16 v13, 0x65

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1977
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x119

    const/16 v13, 0x65

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1978
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x11b

    const/16 v13, 0x65

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1979
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x18f

    const/16 v13, 0x65

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1980
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x190

    const/16 v13, 0x65

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1981
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x205

    const/16 v13, 0x65

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1982
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x207

    const/16 v13, 0x65

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1983
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x229

    const/16 v13, 0x65

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1984
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x192

    const/16 v13, 0x66

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1985
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x11d

    const/16 v13, 0x67

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1986
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x11f

    const/16 v13, 0x67

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1987
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x121

    const/16 v13, 0x67

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1988
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x123

    const/16 v13, 0x67

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1989
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1e5

    const/16 v13, 0x67

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1990
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1e7

    const/16 v13, 0x67

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1991
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1f5

    const/16 v13, 0x67

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1992
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x125

    const/16 v13, 0x68

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1993
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x127

    const/16 v13, 0x68

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1994
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x195

    const/16 v13, 0x68

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1995
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x21f

    const/16 v13, 0x68

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1996
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xed

    const/16 v13, 0x69

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1997
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xee

    const/16 v13, 0x69

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1998
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xef

    const/16 v13, 0x69

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1999
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x129

    const/16 v13, 0x69

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2000
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x12b

    const/16 v13, 0x69

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2001
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x12f

    const/16 v13, 0x69

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2002
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x131

    const/16 v13, 0x69

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2003
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x196

    const/16 v13, 0x69

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2004
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1d0

    const/16 v13, 0x69

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2005
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x209

    const/16 v13, 0x69

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2006
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x20b

    const/16 v13, 0x69

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2007
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x135

    const/16 v13, 0x6a

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2008
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1f0

    const/16 v13, 0x6a

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2009
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x137

    const/16 v13, 0x6b

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2010
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x199

    const/16 v13, 0x6b

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2011
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1e9

    const/16 v13, 0x6b

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2012
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x13a

    const/16 v13, 0x6c

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2013
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x13c

    const/16 v13, 0x6c

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2014
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x13e

    const/16 v13, 0x6c

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2015
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x140

    const/16 v13, 0x6c

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2016
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x142

    const/16 v13, 0x6c

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2017
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x19a

    const/16 v13, 0x6c

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2018
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x19c

    const/16 v13, 0x6d

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2019
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x144

    const/16 v13, 0x6e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2020
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x146

    const/16 v13, 0x6e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2021
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x148

    const/16 v13, 0x6e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2022
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x149

    const/16 v13, 0x6e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2023
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x14b

    const/16 v13, 0x6e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2024
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x19e

    const/16 v13, 0x6e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2025
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1f9

    const/16 v13, 0x6e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2026
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x235

    const/16 v13, 0x6e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2027
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xf3

    const/16 v13, 0x6f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2028
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xf4

    const/16 v13, 0x6f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2029
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xf5

    const/16 v13, 0x6f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2030
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x14d

    const/16 v13, 0x6f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2031
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x14f

    const/16 v13, 0x6f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2032
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x151

    const/16 v13, 0x6f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2033
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1a1

    const/16 v13, 0x6f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2034
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1d2

    const/16 v13, 0x6f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2035
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1eb

    const/16 v13, 0x6f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2036
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1ed

    const/16 v13, 0x6f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2037
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x20d

    const/16 v13, 0x6f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2038
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x20f

    const/16 v13, 0x6f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2039
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x22b

    const/16 v13, 0x6f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2040
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x22d

    const/16 v13, 0x6f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2041
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x22f

    const/16 v13, 0x6f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2042
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x231

    const/16 v13, 0x6f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2043
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x153

    const/16 v13, 0x6f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2044
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1a5

    const/16 v13, 0x70

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2045
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x155

    const/16 v13, 0x72

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2046
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x157

    const/16 v13, 0x72

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2047
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x159

    const/16 v13, 0x72

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2048
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x211

    const/16 v13, 0x72

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2049
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x213

    const/16 v13, 0x72

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2050
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x15b

    const/16 v13, 0x73

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2051
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x15d

    const/16 v13, 0x73

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2052
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x15f

    const/16 v13, 0x73

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2053
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x161

    const/16 v13, 0x73

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2054
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1a8

    const/16 v13, 0x73

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2055
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x219

    const/16 v13, 0x73

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2056
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x163

    const/16 v13, 0x74

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2057
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x165

    const/16 v13, 0x74

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2058
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x167

    const/16 v13, 0x74

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2059
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1ab

    const/16 v13, 0x74

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2060
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1ad

    const/16 v13, 0x74

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2061
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x21b

    const/16 v13, 0x74

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2062
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x236

    const/16 v13, 0x74

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2063
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xfa

    const/16 v13, 0x75

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2064
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xfb

    const/16 v13, 0x75

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2065
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x169

    const/16 v13, 0x75

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2066
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x16b

    const/16 v13, 0x75

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2067
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x16d

    const/16 v13, 0x75

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2068
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x16f

    const/16 v13, 0x75

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2069
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x171

    const/16 v13, 0x75

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2070
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x173

    const/16 v13, 0x75

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2071
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1b0

    const/16 v13, 0x75

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2072
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1d4

    const/16 v13, 0x75

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2073
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1d6

    const/16 v13, 0x75

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2074
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1d8

    const/16 v13, 0x75

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2075
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1da

    const/16 v13, 0x75

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2076
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1dc

    const/16 v13, 0x75

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2077
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x215

    const/16 v13, 0x75

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2078
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x217

    const/16 v13, 0x75

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2079
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1b4

    const/16 v13, 0x76

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2080
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x175

    const/16 v13, 0x77

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2081
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xfd

    const/16 v13, 0x79

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2082
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xff

    const/16 v13, 0x79

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2083
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x177

    const/16 v13, 0x79

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2084
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x233

    const/16 v13, 0x79

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2085
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x17a

    const/16 v13, 0x7a

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2086
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x17c

    const/16 v13, 0x7a

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2087
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x17e

    const/16 v13, 0x7a

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2088
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1b6

    const/16 v13, 0x7a

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2089
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x225

    const/16 v13, 0x7a

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2090
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmBasicLatin:Landroid/util/SparseIntArray;

    const/16 v12, 0x60

    const/16 v13, 0x27

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2091
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xc0

    const/16 v13, 0x41

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2092
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xc1

    const/16 v13, 0x41

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2093
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xc2

    const/16 v13, 0x41

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2094
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xc3

    const/16 v13, 0x41

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2095
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x100

    const/16 v13, 0x41

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2096
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x102

    const/16 v13, 0x41

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2097
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x104

    const/16 v13, 0x41

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2098
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1cd

    const/16 v13, 0x41

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2099
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1de

    const/16 v13, 0x41

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2100
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1e0

    const/16 v13, 0x41

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2101
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1fa

    const/16 v13, 0x41

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2102
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x200

    const/16 v13, 0x41

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2103
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x202

    const/16 v13, 0x41

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2104
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x226

    const/16 v13, 0x41

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2105
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x181

    const/16 v13, 0x42

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2106
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x106

    const/16 v13, 0x43

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2107
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x108

    const/16 v13, 0x43

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2108
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x10a

    const/16 v13, 0x43

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2109
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x10c

    const/16 v13, 0x43

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2110
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x186

    const/16 v13, 0x43

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2111
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x187

    const/16 v13, 0x43

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2112
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xd0

    const/16 v13, 0x44

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2113
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x10e

    const/16 v13, 0x44

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2114
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x110

    const/16 v13, 0x44

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2115
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x189

    const/16 v13, 0x44

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2116
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x18a

    const/16 v13, 0x44

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2117
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xc8

    const/16 v13, 0x45

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2118
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xca

    const/16 v13, 0x45

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2119
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xcb

    const/16 v13, 0x45

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2120
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x112

    const/16 v13, 0x45

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2121
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x114

    const/16 v13, 0x45

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2122
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x116

    const/16 v13, 0x45

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2123
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x118

    const/16 v13, 0x45

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2124
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x11a

    const/16 v13, 0x45

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2125
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x18e

    const/16 v13, 0x45

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2126
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x204

    const/16 v13, 0x45

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2127
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x206

    const/16 v13, 0x45

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2128
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x228

    const/16 v13, 0x45

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2129
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x191

    const/16 v13, 0x46

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2130
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x11c

    const/16 v13, 0x47

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2131
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x11e

    const/16 v13, 0x47

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2132
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x120

    const/16 v13, 0x47

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2133
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x122

    const/16 v13, 0x47

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2134
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x193

    const/16 v13, 0x47

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2135
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1e4

    const/16 v13, 0x47

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2136
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1e6

    const/16 v13, 0x47

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2137
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1f4

    const/16 v13, 0x47

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2138
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x124

    const/16 v13, 0x48

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2139
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x126

    const/16 v13, 0x48

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2140
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1f6

    const/16 v13, 0x48

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2141
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x21e

    const/16 v13, 0x48

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2142
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xcc

    const/16 v13, 0x49

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2143
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xcd

    const/16 v13, 0x49

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2144
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xce

    const/16 v13, 0x49

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2145
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xcf

    const/16 v13, 0x49

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2146
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x128

    const/16 v13, 0x49

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2147
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x12a

    const/16 v13, 0x49

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2148
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x12c

    const/16 v13, 0x49

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2149
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x12e

    const/16 v13, 0x49

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2150
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x130

    const/16 v13, 0x49

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2151
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x197

    const/16 v13, 0x49

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2152
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1cf

    const/16 v13, 0x49

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2153
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x208

    const/16 v13, 0x49

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2154
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x20a

    const/16 v13, 0x49

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2155
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x134

    const/16 v13, 0x4a

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2156
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x136

    const/16 v13, 0x4b

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2157
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x138

    const/16 v13, 0x4b

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2158
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x198

    const/16 v13, 0x4b

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2159
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1e8

    const/16 v13, 0x4b

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2160
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x139

    const/16 v13, 0x4c

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2161
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x13b

    const/16 v13, 0x4c

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2162
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x13d

    const/16 v13, 0x4c

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2163
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x13f

    const/16 v13, 0x4c

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2164
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x141

    const/16 v13, 0x4c

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2165
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x143

    const/16 v13, 0x4e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2166
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x145

    const/16 v13, 0x4e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2167
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x147

    const/16 v13, 0x4e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2168
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x14a

    const/16 v13, 0x4e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2169
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x19d

    const/16 v13, 0x4e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2170
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1f8

    const/16 v13, 0x4e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2171
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xd2

    const/16 v13, 0x4f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2172
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xd3

    const/16 v13, 0x4f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2173
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xd4

    const/16 v13, 0x4f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2174
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xd5

    const/16 v13, 0x4f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2175
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x14c

    const/16 v13, 0x4f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2176
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x14e

    const/16 v13, 0x4f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2177
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x150

    const/16 v13, 0x4f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2178
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1a0

    const/16 v13, 0x4f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2179
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1d1

    const/16 v13, 0x4f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2180
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1ea

    const/16 v13, 0x4f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2181
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1ec

    const/16 v13, 0x4f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2182
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x20c

    const/16 v13, 0x4f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2183
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x20e

    const/16 v13, 0x4f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2184
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x152

    const/16 v13, 0x4f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2185
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1a4

    const/16 v13, 0x50

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2186
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x22a

    const/16 v13, 0x50

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2187
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x22c

    const/16 v13, 0x50

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2188
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x22e

    const/16 v13, 0x50

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2189
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x230

    const/16 v13, 0x50

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2190
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x154

    const/16 v13, 0x52

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2191
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x156

    const/16 v13, 0x52

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2192
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x158

    const/16 v13, 0x52

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2193
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1a6

    const/16 v13, 0x52

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2194
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x210

    const/16 v13, 0x52

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2195
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x212

    const/16 v13, 0x52

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2196
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x15a

    const/16 v13, 0x53

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2197
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x15c

    const/16 v13, 0x53

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2198
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x15e

    const/16 v13, 0x53

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2199
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x160

    const/16 v13, 0x53

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2200
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1a7

    const/16 v13, 0x53

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2201
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x218

    const/16 v13, 0x53

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2202
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x162

    const/16 v13, 0x54

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2203
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x164

    const/16 v13, 0x54

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2204
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x166

    const/16 v13, 0x54

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2205
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1ac

    const/16 v13, 0x54

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2206
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1ae

    const/16 v13, 0x54

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2207
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x21a

    const/16 v13, 0x54

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2208
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xd9

    const/16 v13, 0x55

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2209
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xda

    const/16 v13, 0x55

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2210
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xdb

    const/16 v13, 0x55

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2211
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x168

    const/16 v13, 0x55

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2212
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x16a

    const/16 v13, 0x55

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2213
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x16c

    const/16 v13, 0x55

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2214
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x16e

    const/16 v13, 0x55

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2215
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x170

    const/16 v13, 0x55

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2216
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x172

    const/16 v13, 0x55

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2217
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1b1

    const/16 v13, 0x55

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2218
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1b2

    const/16 v13, 0x55

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2219
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1d3

    const/16 v13, 0x55

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2220
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1d5

    const/16 v13, 0x55

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2221
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1d7

    const/16 v13, 0x55

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2222
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1d9

    const/16 v13, 0x55

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2223
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1db

    const/16 v13, 0x55

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2224
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x214

    const/16 v13, 0x55

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2225
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x216

    const/16 v13, 0x55

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2226
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x174

    const/16 v13, 0x57

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2227
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xdd

    const/16 v13, 0x59

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2228
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x176

    const/16 v13, 0x59

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2229
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x178

    const/16 v13, 0x59

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2230
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1b3

    const/16 v13, 0x59

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2231
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x232

    const/16 v13, 0x59

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2232
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x179

    const/16 v13, 0x5a

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2233
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x17b

    const/16 v13, 0x5a

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2234
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v12, 0x17d

    const/16 v13, 0x5a

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2235
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x1b5

    const/16 v13, 0x5a

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2236
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v12, 0x224

    const/16 v13, 0x5a

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2237
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x391

    const/16 v13, 0x41

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2238
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x386

    const/16 v13, 0x41

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2239
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3b1

    const/16 v13, 0x41

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2240
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3ac

    const/16 v13, 0x41

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2241
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x392

    const/16 v13, 0x42

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2242
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3b2

    const/16 v13, 0x42

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2243
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x388

    const/16 v13, 0x45

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2244
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x395

    const/16 v13, 0x45

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2245
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3b5

    const/16 v13, 0x45

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2246
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3ad

    const/16 v13, 0x45

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2247
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x389

    const/16 v13, 0x48

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2248
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x397

    const/16 v13, 0x48

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2249
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3b7

    const/16 v13, 0x48

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2250
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3ae

    const/16 v13, 0x48

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2251
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x399

    const/16 v13, 0x49

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2252
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x38a

    const/16 v13, 0x49

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2253
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3aa

    const/16 v13, 0x49

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2254
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3b9

    const/16 v13, 0x49

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2255
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3af

    const/16 v13, 0x49

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2256
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3ca

    const/16 v13, 0x49

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2257
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x39a

    const/16 v13, 0x4b

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2258
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3ba

    const/16 v13, 0x4b

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2259
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x39c

    const/16 v13, 0x4d

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2260
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3bc

    const/16 v13, 0x4d

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2261
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x39d

    const/16 v13, 0x4e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2262
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3bd

    const/16 v13, 0x4e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2263
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x39f

    const/16 v13, 0x4f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2264
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x38c

    const/16 v13, 0x4f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2265
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3bf

    const/16 v13, 0x4f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2266
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3cc

    const/16 v13, 0x4f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2267
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3a1

    const/16 v13, 0x50

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2268
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3c1

    const/16 v13, 0x50

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2269
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3a4

    const/16 v13, 0x54

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2270
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3c4

    const/16 v13, 0x54

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2271
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3a7

    const/16 v13, 0x58

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2272
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3c7

    const/16 v13, 0x58

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2273
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3a5

    const/16 v13, 0x59

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2274
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x38e

    const/16 v13, 0x59

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2275
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3ab

    const/16 v13, 0x59

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2276
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3c5

    const/16 v13, 0x59

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2277
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3cd

    const/16 v13, 0x59

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2278
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3cb

    const/16 v13, 0x59

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2279
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x396

    const/16 v13, 0x5a

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2280
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3b6

    const/16 v13, 0x5a

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2281
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3b4

    const/16 v13, 0x10

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2282
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3c6

    const/16 v13, 0x12

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2283
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3b3

    const/16 v13, 0x13

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2284
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3bb

    const/16 v13, 0x14

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2285
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x38f

    const/16 v13, 0x15

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2286
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3c9

    const/16 v13, 0x15

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2287
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3ce

    const/16 v13, 0x15

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2288
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3c0

    const/16 v13, 0x16

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2289
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3c8

    const/16 v13, 0x17

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2290
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3c3

    const/16 v13, 0x18

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2291
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3c2

    const/16 v13, 0x18

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2292
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3b8

    const/16 v13, 0x19

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2293
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v12, 0x3be

    const/16 v13, 0x1a

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2295
    const/4 v11, 0x0

    const-string v12, "gsm_strict_encoding"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2296
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGeneralPunctuation:Landroid/util/SparseIntArray;

    const/16 v12, 0x201c

    const/16 v13, 0x22

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2297
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGeneralPunctuation:Landroid/util/SparseIntArray;

    const/16 v12, 0x2026

    const/16 v13, 0x2e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2298
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xb0

    const/16 v13, 0x6f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2299
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xb6

    const/16 v13, 0x20

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2300
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xb7

    const/16 v13, 0x2e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2301
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmCyrillic:Landroid/util/SparseIntArray;

    const/16 v12, 0x413

    const/16 v13, 0x13

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2302
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmCyrillic:Landroid/util/SparseIntArray;

    const/16 v12, 0x424

    const/16 v13, 0x12

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2303
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmCyrillic:Landroid/util/SparseIntArray;

    const/16 v12, 0x401

    const/16 v13, 0x45

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2305
    :cond_8
    return-void

    .line 1960
    :cond_9
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v12, 0xe7

    const/16 v13, 0x63

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_4
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    return v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    return-object v0
.end method

.method public static charToGsm(C)I
    .locals 4
    .param p0, "c"    # C

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x0

    .line 155
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 158
    :goto_0
    return v1

    .line 156
    :catch_0
    move-exception v0

    .line 158
    .local v0, "ex":Lcom/android/internal/telephony/EncodeException;
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    goto :goto_0
.end method

.method public static charToGsm(CZ)I
    .locals 5
    .param p0, "c"    # C
    .param p1, "throwException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 178
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 180
    .local v0, "ret":I
    if-ne v0, v2, :cond_2

    .line 181
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 183
    if-ne v0, v2, :cond_1

    .line 184
    if-eqz p1, :cond_0

    .line 185
    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v1

    .line 187
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 194
    :goto_0
    return v1

    .line 190
    :cond_1
    const/16 v1, 0x1b

    goto :goto_0

    :cond_2
    move v1, v0

    .line 194
    goto :goto_0
.end method

.method public static charToGsmExtended(C)I
    .locals 5
    .param p0, "c"    # C

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 208
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 210
    .local v0, "ret":I
    if-ne v0, v2, :cond_0

    .line 211
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 214
    .end local v0    # "ret":I
    :cond_0
    return v0
.end method

.method public static countGsmSeptets(C)I
    .locals 3
    .param p0, "c"    # C

    .prologue
    const/4 v1, 0x0

    .line 790
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 793
    :goto_0
    return v1

    .line 791
    :catch_0
    move-exception v0

    .line 793
    .local v0, "ex":Lcom/android/internal/telephony/EncodeException;
    goto :goto_0
.end method

.method public static countGsmSeptets(CZ)I
    .locals 4
    .param p0, "c"    # C
    .param p1, "throwsException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 808
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 820
    :cond_0
    :goto_0
    return v0

    .line 812
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 813
    const/4 v0, 0x2

    goto :goto_0

    .line 816
    :cond_2
    if-eqz p1, :cond_0

    .line 817
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v0
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 27
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 968
    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    sget-object v26, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    if-nez v25, :cond_3

    .line 969
    new-instance v22, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 970
    .local v22, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v14

    .line 971
    .local v14, "septets":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v14, v0, :cond_1

    .line 972
    const/16 v22, 0x0

    .line 1099
    .end local v14    # "septets":I
    .end local v22    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_0
    :goto_0
    return-object v22

    .line 974
    .restart local v14    # "septets":I
    .restart local v22    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_1
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 975
    move-object/from16 v0, v22

    iput v14, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 976
    const/16 v25, 0xa0

    move/from16 v0, v25

    if-le v14, v0, :cond_2

    .line 977
    add-int/lit16 v0, v14, 0x98

    move/from16 v25, v0

    move/from16 v0, v25

    div-int/lit16 v0, v0, 0x99

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 979
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    mul-int/lit16 v0, v0, 0x99

    move/from16 v25, v0

    sub-int v25, v25, v14

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 985
    :goto_1
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_0

    .line 982
    :cond_2
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 983
    rsub-int v0, v14, 0xa0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_1

    .line 989
    .end local v14    # "septets":I
    .end local v22    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_3
    sget v11, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 990
    .local v11, "maxSingleShiftCode":I
    new-instance v10, Ljava/util/ArrayList;

    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 994
    .local v10, "lpcList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;>;"
    new-instance v25, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    const/16 v26, 0x0

    invoke-direct/range {v25 .. v26}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .local v4, "arr$":[I
    array-length v8, v4

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v8, :cond_5

    aget v6, v4, v7

    .line 997
    .local v6, "i":I
    if-eqz v6, :cond_4

    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v25, v25, v6

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_4

    .line 998
    new-instance v25, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1002
    .end local v6    # "i":I
    :cond_5
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v19

    .line 1004
    .local v19, "sz":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i":I
    :goto_3
    move/from16 v0, v19

    if-ge v6, v0, :cond_e

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_e

    .line 1005
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 1006
    .local v5, "c":C
    const/16 v25, 0x1b

    move/from16 v0, v25

    if-ne v5, v0, :cond_7

    .line 1007
    const-string v25, "GSM"

    const-string v26, "countGsmSeptets() string contains Escape character, ignoring!"

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1011
    :cond_7
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 1012
    .local v9, "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    const/16 v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v21

    .line 1013
    .local v21, "tableIndex":I
    const/16 v25, -0x1

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 1015
    const/16 v20, 0x0

    .local v20, "table":I
    :goto_4
    move/from16 v0, v20

    if-gt v0, v11, :cond_8

    .line 1016
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v25, v25, v20

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_9

    .line 1017
    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v25, v25, v20

    const/16 v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v18

    .line 1018
    .local v18, "shiftTableIndex":I
    const/16 v25, -0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 1019
    if-eqz p1, :cond_a

    .line 1021
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v20

    .line 1022
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v20

    .line 1015
    .end local v18    # "shiftTableIndex":I
    :cond_9
    :goto_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 1025
    .restart local v18    # "shiftTableIndex":I
    :cond_a
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    const/16 v26, -0x1

    aput v26, v25, v20

    goto :goto_5

    .line 1029
    :cond_b
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x2

    aput v26, v25, v20

    goto :goto_5

    .line 1035
    .end local v18    # "shiftTableIndex":I
    .end local v20    # "table":I
    :cond_c
    const/16 v20, 0x0

    .restart local v20    # "table":I
    :goto_6
    move/from16 v0, v20

    if-gt v0, v11, :cond_8

    .line 1036
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v25, v25, v20

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_d

    .line 1037
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v20

    .line 1035
    :cond_d
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 1045
    .end local v5    # "c":C
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v20    # "table":I
    .end local v21    # "tableIndex":I
    :cond_e
    new-instance v22, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 1046
    .restart local v22    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const v25, 0x7fffffff

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1047
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1048
    const v12, 0x7fffffff

    .line 1049
    .local v12, "minUnencodableCount":I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 1050
    .restart local v9    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    const/16 v17, 0x0

    .local v17, "shiftTable":I
    :goto_7
    move/from16 v0, v17

    if-gt v0, v11, :cond_f

    .line 1051
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v14, v25, v17

    .line 1052
    .restart local v14    # "septets":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v14, v0, :cond_11

    .line 1050
    :cond_10
    :goto_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 1056
    :cond_11
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v25, v0

    if-eqz v25, :cond_16

    if-eqz v17, :cond_16

    .line 1057
    const/16 v23, 0x8

    .line 1065
    .local v23, "udhLength":I
    :goto_9
    add-int v25, v14, v23

    const/16 v26, 0xa0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_19

    .line 1066
    if-nez v23, :cond_12

    .line 1067
    const/16 v23, 0x1

    .line 1069
    :cond_12
    add-int/lit8 v23, v23, 0x6

    .line 1070
    move/from16 v0, v23

    rsub-int v15, v0, 0xa0

    .line 1071
    .local v15, "septetsPerMessage":I
    add-int v25, v14, v15

    add-int/lit8 v25, v25, -0x1

    div-int v13, v25, v15

    .line 1072
    .local v13, "msgCount":I
    mul-int v25, v13, v15

    sub-int v16, v25, v14

    .line 1078
    .end local v15    # "septetsPerMessage":I
    .local v16, "septetsRemaining":I
    :goto_a
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    move-object/from16 v25, v0

    aget v24, v25, v17

    .line 1079
    .local v24, "unencodableCount":I
    if-eqz p1, :cond_13

    move/from16 v0, v24

    if-gt v0, v12, :cond_10

    .line 1082
    :cond_13
    if-eqz p1, :cond_14

    move/from16 v0, v24

    if-lt v0, v12, :cond_15

    :cond_14
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v13, v0, :cond_15

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v13, v0, :cond_10

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-le v0, v1, :cond_10

    .line 1085
    :cond_15
    move/from16 v12, v24

    .line 1086
    move-object/from16 v0, v22

    iput v13, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1087
    move-object/from16 v0, v22

    iput v14, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1088
    move/from16 v0, v16

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1089
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 1090
    move/from16 v0, v17

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    goto :goto_8

    .line 1058
    .end local v13    # "msgCount":I
    .end local v16    # "septetsRemaining":I
    .end local v23    # "udhLength":I
    .end local v24    # "unencodableCount":I
    :cond_16
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v25, v0

    if-nez v25, :cond_17

    if-eqz v17, :cond_18

    .line 1059
    :cond_17
    const/16 v23, 0x5

    .restart local v23    # "udhLength":I
    goto :goto_9

    .line 1061
    .end local v23    # "udhLength":I
    :cond_18
    const/16 v23, 0x0

    .restart local v23    # "udhLength":I
    goto :goto_9

    .line 1074
    :cond_19
    const/4 v13, 0x1

    .line 1075
    .restart local v13    # "msgCount":I
    move/from16 v0, v23

    rsub-int v0, v0, 0xa0

    move/from16 v25, v0

    sub-int v16, v25, v14

    .restart local v16    # "septetsRemaining":I
    goto :goto_a

    .line 1095
    .end local v9    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v13    # "msgCount":I
    .end local v14    # "septets":I
    .end local v16    # "septetsRemaining":I
    .end local v17    # "shiftTable":I
    .end local v23    # "udhLength":I
    :cond_1a
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    const v26, 0x7fffffff

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 1096
    const/16 v22, 0x0

    goto/16 :goto_0
.end method

.method public static countGsmSeptetsLossyAuto(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 28
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 1114
    sget-object v26, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    sget-object v27, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    add-int v26, v26, v27

    if-nez v26, :cond_3

    .line 1115
    new-instance v23, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct/range {v23 .. v23}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 1116
    .local v23, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTablesLossyAuto(Ljava/lang/CharSequence;ZII)I

    move-result v15

    .line 1117
    .local v15, "septets":I
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v15, v0, :cond_1

    .line 1118
    const/16 v23, 0x0

    .line 1246
    .end local v15    # "septets":I
    .end local v23    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_0
    :goto_0
    return-object v23

    .line 1120
    .restart local v15    # "septets":I
    .restart local v23    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_1
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1121
    move-object/from16 v0, v23

    iput v15, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1122
    const/16 v26, 0xa0

    move/from16 v0, v26

    if-le v15, v0, :cond_2

    .line 1123
    add-int/lit16 v0, v15, 0x98

    move/from16 v26, v0

    move/from16 v0, v26

    div-int/lit16 v0, v0, 0x99

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1125
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v26, v0

    move/from16 v0, v26

    mul-int/lit16 v0, v0, 0x99

    move/from16 v26, v0

    sub-int v26, v26, v15

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1131
    :goto_1
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_0

    .line 1128
    :cond_2
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1129
    rsub-int v0, v15, 0xa0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_1

    .line 1135
    .end local v15    # "septets":I
    .end local v23    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_3
    sget v12, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 1136
    .local v12, "maxSingleShiftCode":I
    new-instance v11, Ljava/util/ArrayList;

    sget-object v26, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1140
    .local v11, "lpcList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;>;"
    new-instance v26, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    const/16 v27, 0x0

    invoke-direct/range {v26 .. v27}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    move-object/from16 v0, v26

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1141
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .local v4, "arr$":[I
    array-length v9, v4

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    if-ge v8, v9, :cond_5

    aget v7, v4, v8

    .line 1143
    .local v7, "i":I
    if-eqz v7, :cond_4

    sget-object v26, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v26, v26, v7

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_4

    .line 1144
    new-instance v26, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    move-object/from16 v0, v26

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    move-object/from16 v0, v26

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1141
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1148
    .end local v7    # "i":I
    :cond_5
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v20

    .line 1150
    .local v20, "sz":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i":I
    :goto_3
    move/from16 v0, v20

    if-ge v7, v0, :cond_e

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_e

    .line 1151
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 1152
    .local v5, "c":C
    const/16 v26, 0x1b

    move/from16 v0, v26

    if-ne v5, v0, :cond_7

    .line 1153
    const-string v26, "GSM"

    const-string v27, "countGsmSeptets() string contains Escape character, ignoring!"

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1157
    :cond_7
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 1158
    .local v10, "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    sget-object v26, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    iget v0, v10, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    const/16 v27, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v22

    .line 1159
    .local v22, "tableIndex":I
    const/16 v26, -0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    .line 1161
    const/16 v21, 0x0

    .local v21, "table":I
    :goto_4
    move/from16 v0, v21

    if-gt v0, v12, :cond_8

    .line 1162
    iget-object v0, v10, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v26, v0

    aget v26, v26, v21

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_9

    .line 1163
    sget-object v26, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v26, v26, v21

    const/16 v27, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v19

    .line 1164
    .local v19, "shiftTableIndex":I
    const/16 v26, -0x1

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 1165
    if-eqz p1, :cond_a

    invoke-static {v5}, Lcom/android/internal/telephony/GsmAlphabet;->lookupLossy7bitTable(C)I

    move-result v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_a

    .line 1166
    iget-object v0, v10, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v26, v0

    aget v27, v26, v21

    add-int/lit8 v27, v27, 0x1

    aput v27, v26, v21

    .line 1167
    iget-object v0, v10, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    move-object/from16 v26, v0

    aget v27, v26, v21

    add-int/lit8 v27, v27, 0x1

    aput v27, v26, v21

    .line 1161
    .end local v19    # "shiftTableIndex":I
    :cond_9
    :goto_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 1170
    .restart local v19    # "shiftTableIndex":I
    :cond_a
    iget-object v0, v10, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v26, v0

    const/16 v27, -0x1

    aput v27, v26, v21

    goto :goto_5

    .line 1174
    :cond_b
    iget-object v0, v10, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v26, v0

    aget v27, v26, v21

    add-int/lit8 v27, v27, 0x2

    aput v27, v26, v21

    goto :goto_5

    .line 1180
    .end local v19    # "shiftTableIndex":I
    .end local v21    # "table":I
    :cond_c
    const/16 v21, 0x0

    .restart local v21    # "table":I
    :goto_6
    move/from16 v0, v21

    if-gt v0, v12, :cond_8

    .line 1181
    iget-object v0, v10, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v26, v0

    aget v26, v26, v21

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_d

    .line 1182
    iget-object v0, v10, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v26, v0

    aget v27, v26, v21

    add-int/lit8 v27, v27, 0x1

    aput v27, v26, v21

    .line 1180
    :cond_d
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 1190
    .end local v5    # "c":C
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v21    # "table":I
    .end local v22    # "tableIndex":I
    :cond_e
    new-instance v23, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct/range {v23 .. v23}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 1191
    .restart local v23    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const v26, 0x7fffffff

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1192
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1193
    const v13, 0x7fffffff

    .line 1194
    .local v13, "minUnencodableCount":I
    const/4 v6, 0x0

    .line 1195
    .local v6, "count2":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_1a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 1196
    .restart local v10    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    const/16 v18, 0x0

    .local v18, "shiftTable":I
    :goto_7
    move/from16 v0, v18

    if-gt v0, v12, :cond_f

    .line 1197
    iget-object v0, v10, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v26, v0

    aget v15, v26, v18

    .line 1198
    .restart local v15    # "septets":I
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v15, v0, :cond_11

    .line 1196
    :cond_10
    :goto_8
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 1202
    :cond_11
    iget v0, v10, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v26, v0

    if-eqz v26, :cond_16

    if-eqz v18, :cond_16

    .line 1203
    const/16 v24, 0x8

    .line 1212
    .local v24, "udhLength":I
    :goto_9
    add-int v26, v15, v24

    const/16 v27, 0xa0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_19

    .line 1213
    if-nez v24, :cond_12

    .line 1214
    const/16 v24, 0x1

    .line 1216
    :cond_12
    add-int/lit8 v24, v24, 0x6

    .line 1217
    move/from16 v0, v24

    rsub-int v0, v0, 0xa0

    move/from16 v16, v0

    .line 1218
    .local v16, "septetsPerMessage":I
    add-int v26, v15, v16

    add-int/lit8 v26, v26, -0x1

    div-int v14, v26, v16

    .line 1219
    .local v14, "msgCount":I
    mul-int v26, v14, v16

    sub-int v17, v26, v15

    .line 1225
    .end local v16    # "septetsPerMessage":I
    .local v17, "septetsRemaining":I
    :goto_a
    iget-object v0, v10, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    move-object/from16 v26, v0

    aget v25, v26, v18

    .line 1226
    .local v25, "unencodableCount":I
    if-eqz p1, :cond_13

    move/from16 v0, v25

    if-gt v0, v13, :cond_10

    .line 1229
    :cond_13
    if-eqz p1, :cond_14

    move/from16 v0, v25

    if-lt v0, v13, :cond_15

    :cond_14
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v14, v0, :cond_15

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ne v14, v0, :cond_10

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    move/from16 v26, v0

    move/from16 v0, v17

    move/from16 v1, v26

    if-le v0, v1, :cond_10

    .line 1232
    :cond_15
    move/from16 v13, v25

    .line 1233
    move-object/from16 v0, v23

    iput v14, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1234
    move-object/from16 v0, v23

    iput v15, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1235
    move/from16 v0, v17

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1236
    iget v0, v10, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 1237
    move/from16 v0, v18

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    goto :goto_8

    .line 1204
    .end local v14    # "msgCount":I
    .end local v17    # "septetsRemaining":I
    .end local v24    # "udhLength":I
    .end local v25    # "unencodableCount":I
    :cond_16
    iget v0, v10, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v26, v0

    if-nez v26, :cond_17

    if-eqz v18, :cond_18

    .line 1205
    :cond_17
    const/16 v24, 0x5

    .restart local v24    # "udhLength":I
    goto :goto_9

    .line 1207
    .end local v24    # "udhLength":I
    :cond_18
    const/16 v24, 0x0

    .restart local v24    # "udhLength":I
    goto :goto_9

    .line 1221
    :cond_19
    const/4 v14, 0x1

    .line 1222
    .restart local v14    # "msgCount":I
    move/from16 v0, v24

    rsub-int v0, v0, 0xa0

    move/from16 v26, v0

    sub-int v17, v26, v15

    .restart local v17    # "septetsRemaining":I
    goto :goto_a

    .line 1242
    .end local v10    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v14    # "msgCount":I
    .end local v15    # "septets":I
    .end local v17    # "septetsRemaining":I
    .end local v18    # "shiftTable":I
    .end local v24    # "udhLength":I
    :cond_1a
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v26, v0

    const v27, 0x7fffffff

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 1243
    const/16 v23, 0x0

    goto/16 :goto_0
.end method

.method public static countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I
    .locals 9
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I

    .prologue
    const/4 v6, -0x1

    .line 839
    const/4 v3, 0x0

    .line 840
    .local v3, "count":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 841
    .local v5, "sz":I
    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v7, p2

    .line 842
    .local v1, "charToLanguageTable":Landroid/util/SparseIntArray;
    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v7, p3

    .line 843
    .local v2, "charToShiftTable":Landroid/util/SparseIntArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_4

    .line 844
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 845
    .local v0, "c":C
    const/16 v7, 0x1b

    if-ne v0, v7, :cond_0

    .line 846
    const-string v7, "GSM"

    const-string v8, "countGsmSeptets() string contains Escape character, skipping."

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 849
    :cond_0
    invoke-virtual {v1, v0, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v6, :cond_1

    .line 850
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 851
    :cond_1
    invoke-virtual {v2, v0, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v6, :cond_2

    .line 852
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 853
    :cond_2
    if-eqz p1, :cond_3

    .line 854
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v6

    .line 859
    .end local v0    # "c":C
    .end local v3    # "count":I
    :cond_4
    return v3
.end method

.method public static countGsmSeptetsUsingTablesLossyAuto(Ljava/lang/CharSequence;ZII)I
    .locals 9
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I

    .prologue
    const/4 v6, -0x1

    .line 875
    const/4 v3, 0x0

    .line 876
    .local v3, "count":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 877
    .local v5, "sz":I
    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v7, p2

    .line 878
    .local v1, "charToLanguageTable":Landroid/util/SparseIntArray;
    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v7, p3

    .line 879
    .local v2, "charToShiftTable":Landroid/util/SparseIntArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_4

    .line 880
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 881
    .local v0, "c":C
    const/16 v7, 0x1b

    if-ne v0, v7, :cond_0

    .line 882
    const-string v7, "GSM"

    const-string v8, "countGsmSeptets() string contains Escape character, skipping."

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 886
    :cond_0
    invoke-virtual {v1, v0, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v6, :cond_1

    .line 887
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 888
    :cond_1
    invoke-virtual {v2, v0, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v6, :cond_2

    .line 889
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 890
    :cond_2
    if-eqz p1, :cond_5

    .line 891
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->lookupLossy7bitTable(C)I

    move-result v7

    if-eq v7, v6, :cond_3

    .line 892
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v6

    .line 900
    .end local v0    # "c":C
    .end local v3    # "count":I
    :cond_4
    :goto_2
    return v3

    .restart local v0    # "c":C
    .restart local v3    # "count":I
    :cond_5
    move v3, v6

    .line 897
    goto :goto_2
.end method

.method private static enableCountrySpecificEncodings()V
    .locals 3

    .prologue
    .line 1471
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1473
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x1070030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    .line 1474
    const v1, 0x1070031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .line 1476
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v1, v1

    if-lez v1, :cond_0

    .line 1477
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 1482
    :goto_0
    return-void

    .line 1480
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    goto :goto_0
.end method

.method public static findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "langTable"    # I
    .param p4, "langShiftTable"    # I

    .prologue
    const/4 v7, -0x1

    .line 1267
    const/4 v0, 0x0

    .line 1268
    .local v0, "accumulator":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1270
    .local v5, "size":I
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v2, v6, p3

    .line 1271
    .local v2, "charToLangTable":Landroid/util/SparseIntArray;
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v6, p4

    .line 1272
    .local v1, "charToLangShiftTable":Landroid/util/SparseIntArray;
    move v4, p1

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 1273
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 1274
    .local v3, "encodedSeptet":I
    if-ne v3, v7, :cond_1

    .line 1275
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 1276
    if-ne v3, v7, :cond_0

    .line 1278
    add-int/lit8 v0, v0, 0x1

    .line 1285
    :goto_1
    if-le v0, p2, :cond_2

    .line 1289
    .end local v3    # "encodedSeptet":I
    .end local v4    # "i":I
    :goto_2
    return v4

    .line 1280
    .restart local v3    # "encodedSeptet":I
    .restart local v4    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 1283
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1272
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3    # "encodedSeptet":I
    :cond_3
    move v4, v5

    .line 1289
    goto :goto_2
.end method

.method static declared-synchronized getEnabledLockingShiftTables()[I
    .locals 2

    .prologue
    .line 1341
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getEnabledLockingShiftTablesLG()[I
    .locals 1

    .prologue
    .line 1462
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    return-object v0
.end method

.method static declared-synchronized getEnabledSingleShiftTables()[I
    .locals 2

    .prologue
    .line 1330
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getEnabledSingleShiftTablesLG()[I
    .locals 1

    .prologue
    .line 1459
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    return-object v0
.end method

.method private static getNLMccList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1347
    const/4 v7, 0x3

    .line 1348
    .local v7, "mccMaxIndex":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1349
    .local v1, "dividedMccList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    const-string v9, "support_nl_mcc_list"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1350
    .local v6, "mccListFrFeatureSet":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getNLMccList(), mccListFrFeatureSet="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1351
    const/4 v2, 0x0

    .line 1352
    .local v2, "getIndex":I
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 1353
    .local v5, "mcc":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1354
    add-int/lit8 v2, v2, 0x1

    .line 1355
    if-lt v2, v7, :cond_1

    .line 1359
    .end local v5    # "mcc":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 1352
    .restart local v5    # "mcc":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static getNationalLockingShiftEnableIndex(Ljava/lang/String;)[I
    .locals 12
    .param p0, "mcc"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 1389
    new-array v5, v11, [I

    .line 1393
    .local v5, "nationalLSTable":[I
    const/4 v9, 0x3

    new-array v7, v9, [Ljava/lang/String;

    const-string v9, "286"

    aput-object v9, v7, v11

    const/4 v9, 0x1

    const-string v10, "214"

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const-string v10, "268"

    aput-object v10, v7, v9

    .line 1394
    .local v7, "nationalLanuageMccList":[Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "support_nl_locking_shift"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    move-object v6, v5

    .line 1408
    .end local v5    # "nationalLSTable":[I
    .local v6, "nationalLSTable":[I
    :goto_0
    return-object v6

    .line 1397
    .end local v6    # "nationalLSTable":[I
    .restart local v5    # "nationalLSTable":[I
    :cond_0
    new-array v1, v11, [[I

    .line 1398
    .local v1, "enableLockingSiftTable":[[I
    const/4 v3, 0x0

    .line 1399
    .local v3, "index":I
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v8, v0, v2

    .line 1400
    .local v8, "strMcc":Ljava/lang/String;
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1401
    array-length v9, v1

    if-ge v3, v9, :cond_2

    .line 1402
    aget-object v5, v1, v3

    .end local v8    # "strMcc":Ljava/lang/String;
    :cond_1
    move-object v6, v5

    .line 1408
    .end local v5    # "nationalLSTable":[I
    .restart local v6    # "nationalLSTable":[I
    goto :goto_0

    .line 1406
    .end local v6    # "nationalLSTable":[I
    .restart local v5    # "nationalLSTable":[I
    .restart local v8    # "strMcc":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 1399
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static getNationalSingleShiftEnableIndex(Ljava/lang/String;)[I
    .locals 14
    .param p0, "mcc"    # Ljava/lang/String;

    .prologue
    .line 1363
    const/4 v10, 0x0

    new-array v7, v10, [I

    .line 1367
    .local v7, "nationalSSTable":[I
    const/4 v10, 0x0

    const-string v11, "support_nl_single_shift"

    invoke-static {v10, v11}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    move-object v8, v7

    .line 1385
    .end local v7    # "nationalSSTable":[I
    .local v8, "nationalSSTable":[I
    :goto_0
    return-object v8

    .line 1370
    .end local v8    # "nationalSSTable":[I
    .restart local v7    # "nationalSSTable":[I
    :cond_0
    const/4 v10, 0x3

    new-array v1, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "286"

    aput-object v11, v1, v10

    const/4 v10, 0x1

    const-string v11, "214"

    aput-object v11, v1, v10

    const/4 v10, 0x2

    const-string v11, "268"

    aput-object v11, v1, v10

    .line 1371
    .local v1, "enableSingleShiftMccList":[Ljava/lang/String;
    const/4 v10, 0x3

    new-array v2, v10, [[I

    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, 0x1

    aput v13, v11, v12

    aput-object v11, v2, v10

    const/4 v10, 0x1

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_0

    aput-object v11, v2, v10

    const/4 v10, 0x2

    const/4 v11, 0x3

    new-array v11, v11, [I

    fill-array-data v11, :array_1

    aput-object v11, v2, v10

    .line 1372
    .local v2, "enableSingleShiftTable":[[I
    new-instance v6, Ljava/util/ArrayList;

    const/4 v10, 0x3

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1373
    .local v6, "nationalLanuageMccList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->getNLMccList()Ljava/util/ArrayList;

    move-result-object v6

    .line 1374
    const/4 v4, 0x0

    .line 1376
    .local v4, "index":I
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v9, v0, v3

    .line 1377
    .local v9, "strMcc":Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1378
    array-length v10, v2

    if-ge v4, v10, :cond_2

    .line 1379
    aget-object v7, v2, v4

    .end local v9    # "strMcc":Ljava/lang/String;
    :cond_1
    move-object v8, v7

    .line 1385
    .end local v7    # "nationalSSTable":[I
    .restart local v8    # "nationalSSTable":[I
    goto :goto_0

    .line 1383
    .end local v8    # "nationalSSTable":[I
    .restart local v7    # "nationalSSTable":[I
    .restart local v9    # "strMcc":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 1376
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1371
    nop

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3
    .end array-data
.end method

.method public static gsm7BitPackedToString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "pdu"    # [B
    .param p1, "offset"    # I
    .param p2, "lengthSeptets"    # I

    .prologue
    const/4 v3, 0x0

    .line 499
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm7BitPackedToString([BIIIII)Ljava/lang/String;
    .locals 15
    .param p0, "pdu"    # [B
    .param p1, "offset"    # I
    .param p2, "lengthSeptets"    # I
    .param p3, "numPaddingBits"    # I
    .param p4, "languageTable"    # I
    .param p5, "shiftTable"    # I

    .prologue
    .line 520
    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 522
    .local v9, "ret":Ljava/lang/StringBuilder;
    if-ltz p4, :cond_0

    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v12, v12

    move/from16 v0, p4

    if-le v0, v12, :cond_1

    .line 523
    :cond_0
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unknown language table "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/16 p4, 0x0

    .line 526
    :cond_1
    if-ltz p5, :cond_2

    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v12, v12

    move/from16 v0, p5

    if-le v0, v12, :cond_3

    .line 527
    :cond_2
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unknown single shift table "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/16 p5, 0x0

    .line 532
    :cond_3
    const/4 v8, 0x0

    .line 533
    .local v8, "prevCharWasEscape":Z
    :try_start_0
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v7, v12, p4

    .line 534
    .local v7, "languageTableToChar":Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v11, v12, p5

    .line 536
    .local v11, "shiftTableToChar":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 537
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "no language table for code "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v7, v12, v13

    .line 540
    :cond_4
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 541
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "no single shift table for code "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v11, v12, v13

    .line 545
    :cond_5
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v6, v0, :cond_c

    .line 546
    mul-int/lit8 v12, v6, 0x7

    add-int v1, v12, p3

    .line 548
    .local v1, "bitOffset":I
    div-int/lit8 v2, v1, 0x8

    .line 549
    .local v2, "byteOffset":I
    rem-int/lit8 v10, v1, 0x8

    .line 550
    .local v10, "shift":I
    const/4 v5, 0x1

    .line 552
    .local v5, "gsmVal":I
    add-int v12, p1, v2

    array-length v13, p0

    if-ge v12, v13, :cond_6

    .line 553
    add-int v12, p1, v2

    aget-byte v12, p0, v12

    shr-int/2addr v12, v10

    and-int/lit8 v5, v12, 0x7f

    .line 558
    :cond_6
    const/4 v12, 0x1

    if-le v10, v12, :cond_7

    .line 560
    const/16 v12, 0x7f

    add-int/lit8 v13, v10, -0x1

    shr-int/2addr v12, v13

    and-int/2addr v5, v12

    .line 562
    add-int v12, p1, v2

    add-int/lit8 v12, v12, 0x1

    array-length v13, p0

    if-ge v12, v13, :cond_7

    .line 563
    add-int v12, p1, v2

    add-int/lit8 v12, v12, 0x1

    aget-byte v12, p0, v12

    rsub-int/lit8 v13, v10, 0x8

    shl-int/2addr v12, v13

    and-int/lit8 v12, v12, 0x7f

    or-int/2addr v5, v12

    .line 568
    :cond_7
    if-eqz v8, :cond_a

    .line 569
    const/16 v12, 0x1b

    if-ne v5, v12, :cond_8

    .line 570
    const/16 v12, 0x20

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 579
    :goto_1
    const/4 v8, 0x0

    .line 545
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 572
    :cond_8
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 573
    .local v3, "c":C
    const/16 v12, 0x20

    if-ne v3, v12, :cond_9

    .line 574
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 586
    .end local v1    # "bitOffset":I
    .end local v2    # "byteOffset":I
    .end local v3    # "c":C
    .end local v5    # "gsmVal":I
    .end local v6    # "i":I
    .end local v7    # "languageTableToChar":Ljava/lang/String;
    .end local v10    # "shift":I
    .end local v11    # "shiftTableToChar":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 587
    .local v4, "ex":Ljava/lang/RuntimeException;
    const-string v12, "GSM"

    const-string v13, "Error GSM 7 bit packed: "

    invoke-static {v12, v13, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 590
    const-string v12, "It is a wrong formatted message"

    .line 594
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :goto_3
    return-object v12

    .line 576
    .restart local v1    # "bitOffset":I
    .restart local v2    # "byteOffset":I
    .restart local v3    # "c":C
    .restart local v5    # "gsmVal":I
    .restart local v6    # "i":I
    .restart local v7    # "languageTableToChar":Ljava/lang/String;
    .restart local v10    # "shift":I
    .restart local v11    # "shiftTableToChar":Ljava/lang/String;
    :cond_9
    :try_start_1
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 580
    .end local v3    # "c":C
    :cond_a
    const/16 v12, 0x1b

    if-ne v5, v12, :cond_b

    .line 581
    const/4 v8, 0x1

    goto :goto_2

    .line 583
    :cond_b
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 594
    .end local v1    # "bitOffset":I
    .end local v2    # "byteOffset":I
    .end local v5    # "gsmVal":I
    .end local v10    # "shift":I
    :cond_c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3
.end method

.method public static gsm8BitUnpackedToString([BII)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 612
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "characterset"    # Ljava/lang/String;

    .prologue
    .line 627
    const/4 v5, 0x0

    .line 628
    .local v5, "isMbcs":Z
    const/4 v2, 0x0

    .line 629
    .local v2, "charset":Ljava/nio/charset/Charset;
    const/4 v7, 0x0

    .line 631
    .local v7, "mbcsBuffer":Ljava/nio/ByteBuffer;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "us-ascii"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static/range {p3 .. p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 634
    const/4 v5, 0x1

    .line 635
    invoke-static/range {p3 .. p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 636
    const/4 v12, 0x2

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 640
    :cond_0
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v6, v12, v13

    .line 641
    .local v6, "languageTableToChar":Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v11, v12, v13

    .line 643
    .local v11, "shiftTableToChar":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 644
    .local v9, "ret":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 645
    .local v8, "prevWasEscape":Z
    move v3, p1

    .local v3, "i":I
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    add-int v12, p1, p2

    if-ge v4, v12, :cond_1

    .line 648
    aget-byte v12, p0, v4

    and-int/lit16 v1, v12, 0xff

    .line 650
    .local v1, "c":I
    const/16 v12, 0xff

    if-ne v1, v12, :cond_2

    .line 710
    .end local v1    # "c":I
    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 652
    .restart local v1    # "c":I
    :cond_2
    const/16 v12, 0x1b

    if-ne v1, v12, :cond_4

    .line 653
    if-eqz v8, :cond_3

    .line 657
    const/16 v12, 0x20

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 658
    const/4 v8, 0x0

    move v3, v4

    .line 645
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 660
    :cond_3
    const/4 v8, 0x1

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 677
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_4
    if-eqz v8, :cond_7

    .line 678
    const/16 v12, 0x80

    if-ge v1, v12, :cond_6

    .line 679
    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 680
    .local v10, "shiftChar":C
    const/16 v12, 0x20

    if-ne v10, v12, :cond_5

    .line 682
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    move v3, v4

    .line 706
    .end local v4    # "i":I
    .end local v10    # "shiftChar":C
    .restart local v3    # "i":I
    :goto_3
    const/4 v8, 0x0

    goto :goto_1

    .line 684
    .end local v3    # "i":I
    .restart local v4    # "i":I
    .restart local v10    # "shiftChar":C
    :cond_5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 687
    .end local v10    # "shiftChar":C
    :cond_6
    const-string v12, "GsmAlphabet"

    const-string v13, "[TEL-SMS] gsm8BitUnpackedToString extend GSM 7 bit default alphabet"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/16 v12, 0x20

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_3

    .line 691
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_7
    if-eqz v5, :cond_8

    add-int/lit8 v12, v4, 0x1

    add-int v13, p1, p2

    if-lt v12, v13, :cond_a

    .line 692
    :cond_8
    const/16 v12, 0x80

    if-ge v1, v12, :cond_9

    .line 693
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_3

    .line 695
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_9
    const/16 v12, 0x20

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_3

    .line 700
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_a
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 701
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    const/4 v12, 0x2

    invoke-virtual {v7, p0, v4, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 702
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 703
    invoke-virtual {v2, v7}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public static gsmExtendedToChar(I)C
    .locals 4
    .param p0, "gsmChar"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x20

    .line 253
    const/16 v2, 0x1b

    if-ne p0, v2, :cond_1

    move v0, v1

    .line 263
    :cond_0
    :goto_0
    return v0

    .line 255
    :cond_1
    if-ltz p0, :cond_2

    const/16 v2, 0x80

    if-ge p0, v2, :cond_2

    .line 256
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 257
    .local v0, "c":C
    if-ne v0, v1, :cond_0

    .line 258
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .end local v0    # "c":C
    :cond_2
    move v0, v1

    .line 263
    goto :goto_0
.end method

.method public static gsmToChar(I)C
    .locals 2
    .param p0, "gsmChar"    # I

    .prologue
    .line 231
    if-ltz p0, :cond_0

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 232
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 234
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x20

    goto :goto_0
.end method

.method private static lookupLossy7bitTable(C)I
    .locals 4
    .param p0, "c"    # C

    .prologue
    const/4 v3, -0x1

    .line 907
    const/4 v0, -0x1

    .line 909
    .local v0, "v":I
    const/16 v1, 0x80

    if-ge p0, v1, :cond_2

    .line 910
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmBasicLatin:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 927
    :cond_0
    :goto_0
    const/4 v1, 0x0

    const-string v2, "gsm_strict_encoding"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 928
    if-ne v0, v3, :cond_1

    .line 930
    const/16 v0, 0x20

    .line 935
    :cond_1
    return v0

    .line 911
    :cond_2
    const/16 v1, 0x7f

    if-le p0, v1, :cond_3

    const/16 v1, 0x100

    if-ge p0, v1, :cond_3

    .line 912
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0

    .line 913
    :cond_3
    const/16 v1, 0xff

    if-le p0, v1, :cond_4

    const/16 v1, 0x180

    if-ge p0, v1, :cond_4

    .line 914
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0

    .line 915
    :cond_4
    const/16 v1, 0x17f

    if-le p0, v1, :cond_5

    const/16 v1, 0x250

    if-ge p0, v1, :cond_5

    .line 916
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0

    .line 917
    :cond_5
    const/16 v1, 0x36f

    if-le p0, v1, :cond_6

    const/16 v1, 0x400

    if-ge p0, v1, :cond_6

    .line 918
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0

    .line 919
    :cond_6
    const/16 v1, 0x3ff

    if-le p0, v1, :cond_7

    const/16 v1, 0x500

    if-ge p0, v1, :cond_7

    .line 920
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmCyrillic:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0

    .line 921
    :cond_7
    const/16 v1, 0x1fff

    if-le p0, v1, :cond_0

    const/16 v1, 0x2070

    if-ge p0, v1, :cond_0

    .line 922
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGeneralPunctuation:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0
.end method

.method private static packSmsChar([BII)V
    .locals 4
    .param p0, "packedChars"    # [B
    .param p1, "bitOffset"    # I
    .param p2, "value"    # I

    .prologue
    .line 476
    div-int/lit8 v0, p1, 0x8

    .line 477
    .local v0, "byteOffset":I
    rem-int/lit8 v1, p1, 0x8

    .line 479
    .local v1, "shift":I
    add-int/lit8 v0, v0, 0x1

    aget-byte v2, p0, v0

    shl-int v3, p2, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 481
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 482
    add-int/lit8 v0, v0, 0x1

    rsub-int/lit8 v2, v1, 0x8

    shr-int v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 484
    :cond_0
    return-void
.end method

.method static declared-synchronized setEnabledLockingShiftTables([I)V
    .locals 2
    .param p0, "tables"    # [I

    .prologue
    .line 1318
    const-class v1, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .line 1319
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1320
    monitor-exit v1

    return-void

    .line 1318
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static setEnabledLockingShiftTablesLG(Ljava/lang/String;)V
    .locals 1
    .param p0, "mcc"    # Ljava/lang/String;

    .prologue
    .line 1429
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->getNationalLockingShiftEnableIndex(Ljava/lang/String;)[I

    move-result-object v0

    .line 1433
    .local v0, "tables":[I
    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .line 1437
    return-void
.end method

.method public static setEnabledShiftTablesLG()V
    .locals 4

    .prologue
    .line 1446
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1450
    .local v1, "networkOperator":Ljava/lang/String;
    const-string v0, "000"

    .line 1451
    .local v0, "mcc":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 1452
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1454
    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->setEnabledSingleShiftTablesLG(Ljava/lang/String;)V

    .line 1455
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->setEnabledLockingShiftTablesLG(Ljava/lang/String;)V

    .line 1456
    return-void
.end method

.method static declared-synchronized setEnabledSingleShiftTables([I)V
    .locals 2
    .param p0, "tables"    # [I

    .prologue
    .line 1300
    const-class v1, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    .line 1301
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z

    .line 1303
    array-length v0, p0

    if-lez v0, :cond_0

    .line 1304
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1308
    :goto_0
    monitor-exit v1

    return-void

    .line 1306
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1300
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setEnabledSingleShiftTablesLG(Ljava/lang/String;)V
    .locals 2
    .param p0, "mcc"    # Ljava/lang/String;

    .prologue
    .line 1412
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->getNationalSingleShiftEnableIndex(Ljava/lang/String;)[I

    move-result-object v0

    .line 1416
    .local v0, "tables":[I
    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    .line 1418
    array-length v1, v0

    if-lez v1, :cond_0

    .line 1419
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 1426
    :goto_0
    return-void

    .line 1421
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    goto :goto_0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;)[B
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 358
    const/4 v0, 0x1

    invoke-static {p0, v1, v0, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;II)[B
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "languageTable"    # I
    .param p2, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 382
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IZII)[B
    .locals 15
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "startingSeptetOffset"    # I
    .param p2, "throwException"    # Z
    .param p3, "languageTable"    # I
    .param p4, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 415
    .local v7, "dataLen":I
    if-nez p2, :cond_0

    const/4 v13, 0x1

    :goto_0
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {p0, v13, v0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTablesLossyAuto(Ljava/lang/CharSequence;ZII)I

    move-result v10

    .line 419
    .local v10, "septetCount":I
    const/4 v13, -0x1

    if-ne v10, v13, :cond_1

    .line 420
    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    const-string v14, "countGsmSeptetsUsingTables(): unencodable char"

    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 415
    .end local v10    # "septetCount":I
    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    .line 422
    .restart local v10    # "septetCount":I
    :cond_1
    add-int v10, v10, p1

    .line 423
    const/16 v13, 0xff

    if-le v10, v13, :cond_2

    .line 424
    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    const-string v14, "Payload cannot exceed 255 septets"

    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 426
    :cond_2
    mul-int/lit8 v13, v10, 0x7

    add-int/lit8 v13, v13, 0x7

    div-int/lit8 v3, v13, 0x8

    .line 427
    .local v3, "byteCount":I
    add-int/lit8 v13, v3, 0x1

    new-array v9, v13, [B

    .line 428
    .local v9, "ret":[B
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v5, v13, p3

    .line 429
    .local v5, "charToLanguageTable":Landroid/util/SparseIntArray;
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v6, v13, p4

    .line 430
    .local v6, "charToShiftTable":Landroid/util/SparseIntArray;
    const/4 v8, 0x0

    .local v8, "i":I
    move/from16 v11, p1

    .local v11, "septets":I
    mul-int/lit8 v2, p1, 0x7

    .line 431
    .local v2, "bitOffset":I
    :goto_1
    if-ge v8, v7, :cond_6

    if-ge v11, v10, :cond_6

    .line 433
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 434
    .local v4, "c":C
    const/4 v13, -0x1

    invoke-virtual {v5, v4, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 435
    .local v12, "v":I
    const/4 v13, -0x1

    if-ne v12, v13, :cond_5

    .line 436
    const/4 v13, -0x1

    invoke-virtual {v6, v4, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 437
    const/4 v13, -0x1

    if-ne v12, v13, :cond_4

    .line 446
    if-nez p2, :cond_3

    .line 447
    invoke-static {v4}, Lcom/android/internal/telephony/GsmAlphabet;->lookupLossy7bitTable(C)I

    move-result v12

    .line 449
    :cond_3
    const/4 v13, -0x1

    if-ne v12, v13, :cond_5

    .line 450
    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    const-string v14, "stringToGsm7BitPacked(): unencodable char"

    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 454
    :cond_4
    const/16 v13, 0x1b

    invoke-static {v9, v2, v13}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 455
    add-int/lit8 v2, v2, 0x7

    .line 456
    add-int/lit8 v11, v11, 0x1

    .line 459
    :cond_5
    invoke-static {v9, v2, v12}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 460
    add-int/lit8 v11, v11, 0x1

    .line 432
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v2, v2, 0x7

    goto :goto_1

    .line 462
    .end local v4    # "c":C
    .end local v12    # "v":I
    :cond_6
    const/4 v13, 0x0

    int-to-byte v14, v10

    aput-byte v14, v9, v13

    .line 463
    return-object v9
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 282
    invoke-static {p0, p1, v0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    .locals 9
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 317
    const-string v7, "persist.gsm.sms.forcegsm7"

    const-string v8, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "encodingType":Ljava/lang/String;
    const-string v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    move v3, v5

    .line 319
    .local v3, "isThrowException":Z
    :goto_0
    if-eqz p1, :cond_0

    array-length v7, p1

    if-nez v7, :cond_2

    .line 320
    :cond_0
    invoke-static {p0, v6, v3, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v4

    .line 338
    :goto_1
    return-object v4

    .end local v3    # "isThrowException":Z
    :cond_1
    move v3, v6

    .line 318
    goto :goto_0

    .line 324
    .restart local v3    # "isThrowException":Z
    :cond_2
    array-length v7, p1

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v1, v7, 0x8

    .line 325
    .local v1, "headerBits":I
    add-int/lit8 v7, v1, 0x6

    div-int/lit8 v2, v7, 0x7

    .line 332
    .local v2, "headerSeptets":I
    invoke-static {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v4

    .line 336
    .local v4, "ret":[B
    array-length v7, p1

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    .line 337
    const/4 v5, 0x2

    array-length v7, p1

    invoke-static {p1, v6, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public static stringToGsm8BitPacked(Ljava/lang/String;)[B
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 723
    const/4 v2, 0x1

    invoke-static {p0, v2, v3, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v1

    .line 726
    .local v1, "septets":I
    new-array v0, v1, [B

    .line 728
    .local v0, "ret":[B
    array-length v2, v0

    invoke-static {p0, v0, v3, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 730
    return-object v0
.end method

.method public static stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "dest"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 745
    move v4, p2

    .line 746
    .local v4, "outByteIndex":I
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v8, v10

    .line 747
    .local v1, "charToLanguageTable":Landroid/util/SparseIntArray;
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v8, v10

    .line 750
    .local v2, "charToShiftTable":Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, "sz":I
    move v5, v4

    .line 751
    .end local v4    # "outByteIndex":I
    .local v5, "outByteIndex":I
    :goto_0
    if-ge v3, v6, :cond_1

    sub-int v8, v5, p2

    if-ge v8, p3, :cond_1

    .line 754
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 756
    .local v0, "c":C
    invoke-virtual {v1, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 758
    .local v7, "v":I
    if-ne v7, v9, :cond_4

    .line 759
    invoke-virtual {v2, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 760
    if-ne v7, v9, :cond_0

    .line 761
    invoke-virtual {v1, v11, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    move v4, v5

    .line 772
    .end local v5    # "outByteIndex":I
    .restart local v4    # "outByteIndex":I
    :goto_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "outByteIndex":I
    .restart local v5    # "outByteIndex":I
    int-to-byte v8, v7

    aput-byte v8, p1, v4

    .line 752
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 764
    :cond_0
    add-int/lit8 v8, v5, 0x1

    sub-int/2addr v8, p2

    if-lt v8, p3, :cond_2

    .line 776
    .end local v0    # "c":C
    .end local v7    # "v":I
    :cond_1
    :goto_2
    sub-int v8, v5, p2

    if-ge v8, p3, :cond_3

    .line 777
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "outByteIndex":I
    .restart local v4    # "outByteIndex":I
    aput-byte v9, p1, v5

    move v5, v4

    .end local v4    # "outByteIndex":I
    .restart local v5    # "outByteIndex":I
    goto :goto_2

    .line 768
    .restart local v0    # "c":C
    .restart local v7    # "v":I
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "outByteIndex":I
    .restart local v4    # "outByteIndex":I
    const/16 v8, 0x1b

    aput-byte v8, p1, v5

    goto :goto_1

    .line 779
    .end local v0    # "c":C
    .end local v4    # "outByteIndex":I
    .end local v7    # "v":I
    .restart local v5    # "outByteIndex":I
    :cond_3
    return-void

    .restart local v0    # "c":C
    .restart local v7    # "v":I
    :cond_4
    move v4, v5

    .end local v5    # "outByteIndex":I
    .restart local v4    # "outByteIndex":I
    goto :goto_1
.end method
