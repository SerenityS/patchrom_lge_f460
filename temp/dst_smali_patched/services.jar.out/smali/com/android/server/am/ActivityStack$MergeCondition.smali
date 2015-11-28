.class final enum Lcom/android/server/am/ActivityStack$MergeCondition;
.super Ljava/lang/Enum;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MergeCondition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/am/ActivityStack$MergeCondition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/ActivityStack$MergeCondition;

.field public static final enum MERGE_MULTI_TASKS:Lcom/android/server/am/ActivityStack$MergeCondition;

.field public static final enum MERGE_MULTI_TASKS_RECENT:Lcom/android/server/am/ActivityStack$MergeCondition;

.field public static final enum MERGE_MULTI_TASKS_TO_BACK:Lcom/android/server/am/ActivityStack$MergeCondition;

.field public static final enum MERGE_TASK:Lcom/android/server/am/ActivityStack$MergeCondition;

.field public static final enum NO_MERGE:Lcom/android/server/am/ActivityStack$MergeCondition;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/am/ActivityStack$MergeCondition;

    const-string v1, "NO_MERGE"

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack$MergeCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivityStack$MergeCondition;->NO_MERGE:Lcom/android/server/am/ActivityStack$MergeCondition;

    new-instance v0, Lcom/android/server/am/ActivityStack$MergeCondition;

    const-string v1, "MERGE_TASK"

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack$MergeCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivityStack$MergeCondition;->MERGE_TASK:Lcom/android/server/am/ActivityStack$MergeCondition;

    new-instance v0, Lcom/android/server/am/ActivityStack$MergeCondition;

    const-string v1, "MERGE_MULTI_TASKS"

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/ActivityStack$MergeCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivityStack$MergeCondition;->MERGE_MULTI_TASKS:Lcom/android/server/am/ActivityStack$MergeCondition;

    new-instance v0, Lcom/android/server/am/ActivityStack$MergeCondition;

    const-string v1, "MERGE_MULTI_TASKS_TO_BACK"

    invoke-direct {v0, v1, v5}, Lcom/android/server/am/ActivityStack$MergeCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivityStack$MergeCondition;->MERGE_MULTI_TASKS_TO_BACK:Lcom/android/server/am/ActivityStack$MergeCondition;

    new-instance v0, Lcom/android/server/am/ActivityStack$MergeCondition;

    const-string v1, "MERGE_MULTI_TASKS_RECENT"

    invoke-direct {v0, v1, v6}, Lcom/android/server/am/ActivityStack$MergeCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivityStack$MergeCondition;->MERGE_MULTI_TASKS_RECENT:Lcom/android/server/am/ActivityStack$MergeCondition;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/am/ActivityStack$MergeCondition;

    sget-object v1, Lcom/android/server/am/ActivityStack$MergeCondition;->NO_MERGE:Lcom/android/server/am/ActivityStack$MergeCondition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/am/ActivityStack$MergeCondition;->MERGE_TASK:Lcom/android/server/am/ActivityStack$MergeCondition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/am/ActivityStack$MergeCondition;->MERGE_MULTI_TASKS:Lcom/android/server/am/ActivityStack$MergeCondition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/am/ActivityStack$MergeCondition;->MERGE_MULTI_TASKS_TO_BACK:Lcom/android/server/am/ActivityStack$MergeCondition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/am/ActivityStack$MergeCondition;->MERGE_MULTI_TASKS_RECENT:Lcom/android/server/am/ActivityStack$MergeCondition;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/am/ActivityStack$MergeCondition;->$VALUES:[Lcom/android/server/am/ActivityStack$MergeCondition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/ActivityStack$MergeCondition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/server/am/ActivityStack$MergeCondition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack$MergeCondition;

    return-object v0
.end method

.method public static values()[Lcom/android/server/am/ActivityStack$MergeCondition;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/am/ActivityStack$MergeCondition;->$VALUES:[Lcom/android/server/am/ActivityStack$MergeCondition;

    invoke-virtual {v0}, [Lcom/android/server/am/ActivityStack$MergeCondition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/ActivityStack$MergeCondition;

    return-object v0
.end method
