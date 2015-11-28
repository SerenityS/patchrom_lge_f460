.class public Lcom/lge/uicc/SimPhonebookService;
.super Lcom/lge/uicc/ISimPhonebookService$Stub;
.source "SimPhonebookService.java"

# interfaces
.implements Lcom/lge/uicc/PbmEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/uicc/SimPhonebookService$1;,
        Lcom/lge/uicc/SimPhonebookService$PbmHandler;
    }
.end annotation


# static fields
.field private static final EVENT_GET_INIT_STATE_DONE:I = 0x2

.field private static final EVENT_PBM_DELETE_DONE:I = 0xe

.field private static final EVENT_PBM_GETINFO_DONE:I = 0xb

.field private static final EVENT_PBM_READ_DONE:I = 0xc

.field private static final EVENT_PBM_WRITE_DONE:I = 0xd

.field private static final EVENT_PBREADY:I = 0x3

.field private static final EVENT_PROXY_SIM_READY:I = 0x1

.field private static final SUPPORT_GROUP:Z

.field private static mPbmService:Lcom/lge/uicc/SimPhonebookService;


# instance fields
.field private mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/uicc/SimPhonebookService;->mPbmService:Lcom/lge/uicc/SimPhonebookService;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/lge/uicc/ISimPhonebookService$Stub;-><init>()V

    .line 60
    const-string v0, "create instance"

    invoke-static {v0}, Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;-><init>(Lcom/lge/uicc/SimPhonebookService;Lcom/lge/uicc/SimPhonebookService$1;)V

    iput-object v0, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    .line 62
    const-string v0, "proxy.sim_state"

    iget-object v1, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    const/4 v2, 0x1

    const-string v3, "READY"

    invoke-static {v0, v1, v2, v3}, Lcom/lge/uicc/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 63
    const-string v0, "pbm_state"

    iget-object v1, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    const/4 v2, 0x3

    const-string v3, "READY"

    invoke-static {v0, v1, v2, v3}, Lcom/lge/uicc/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 64
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/uicc/SimPhonebookService;)Lcom/lge/uicc/SimPhonebookService$PbmHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lge/uicc/SimPhonebookService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private static convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p2, "inverse"    # Z

    .prologue
    const/16 v5, 0x2b

    .line 488
    if-nez p0, :cond_0

    .line 489
    const-string v4, ""

    .line 505
    :goto_0
    return-object v4

    .line 492
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 493
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 495
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 496
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 497
    .local v0, "c":C
    if-eqz p2, :cond_2

    .line 503
    :cond_1
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 495
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 499
    :cond_2
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    if-nez v1, :cond_1

    if-eq v0, v5, :cond_1

    .line 500
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 505
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static detectType(Ljava/lang/String;)I
    .locals 3
    .param p0, "num"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 478
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 484
    :cond_0
    :goto_0
    return v0

    .line 481
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 482
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private dumpPbmInfo(Ljava/lang/String;Lcom/lge/uicc/PbmInfo;)V
    .locals 5
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/lge/uicc/PbmInfo;

    .prologue
    .line 595
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/lge/uicc/PbmInfo;->device:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/lge/uicc/PbmInfo;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|file_type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/lge/uicc/PbmInfo;->file_type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|max_num_length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/lge/uicc/PbmInfo;->max_num_length:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|max_text_length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/lge/uicc/PbmInfo;->max_text_length:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|num_of_free_ext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/lge/uicc/PbmInfo;->num_of_free_ext:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|num_of_tot_rec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/lge/uicc/PbmInfo;->num_of_tot_rec:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|num_of_used_rec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/lge/uicc/PbmInfo;->num_of_used_rec:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 605
    .local v1, "log1":Ljava/lang/String;
    const-string v2, ""

    .line 606
    .local v2, "log2":Ljava/lang/String;
    iget-object v3, p2, Lcom/lge/uicc/PbmInfo;->records_in_pb_set:[I

    if-eqz v3, :cond_0

    .line 607
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v3, p2, Lcom/lge/uicc/PbmInfo;->records_in_pb_set:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 608
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "| records_in_pb_set["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/lge/uicc/PbmInfo;->records_in_pb_set:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "| used_records_in_pb_set["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/lge/uicc/PbmInfo;->used_records_in_pb_set:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 607
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 612
    .end local v0    # "index":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PbmService] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logd(Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PbmService] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->loge(Ljava/lang/String;)V

    .line 617
    return-void
.end method

.method private static logp(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PbmService] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logp(Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method private newPbmGroupRecordWithoutGroupIndex(Lcom/lge/uicc/SimPhonebookBaseEntry;)Lcom/lge/uicc/PbmRecord;
    .locals 3
    .param p1, "group"    # Lcom/lge/uicc/SimPhonebookBaseEntry;

    .prologue
    const/4 v2, 0x0

    .line 572
    new-instance v0, Lcom/lge/uicc/PbmRecord;

    invoke-direct {v0}, Lcom/lge/uicc/PbmRecord;-><init>()V

    .line 574
    .local v0, "record":Lcom/lge/uicc/PbmRecord;
    const/16 v1, 0x20

    iput v1, v0, Lcom/lge/uicc/PbmRecord;->device:I

    .line 575
    iput v2, v0, Lcom/lge/uicc/PbmRecord;->sync_cnt:I

    .line 576
    iput v2, v0, Lcom/lge/uicc/PbmRecord;->type:I

    .line 577
    iput v2, v0, Lcom/lge/uicc/PbmRecord;->ad_type:I

    .line 578
    iput v2, v0, Lcom/lge/uicc/PbmRecord;->gas_id:I

    .line 579
    iput v2, v0, Lcom/lge/uicc/PbmRecord;->index:I

    .line 580
    iget-object v1, p1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/uicc/PbmRecord;->name:Ljava/lang/String;

    .line 582
    iget-object v1, v0, Lcom/lge/uicc/PbmRecord;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 583
    const-string v1, ""

    iput-object v1, v0, Lcom/lge/uicc/PbmRecord;->name:Ljava/lang/String;

    .line 585
    :cond_0
    const-string v1, ""

    iput-object v1, v0, Lcom/lge/uicc/PbmRecord;->number:Ljava/lang/String;

    .line 586
    const-string v1, ""

    iput-object v1, v0, Lcom/lge/uicc/PbmRecord;->additional_number:Ljava/lang/String;

    .line 587
    const-string v1, ""

    iput-object v1, v0, Lcom/lge/uicc/PbmRecord;->additional_number_a:Ljava/lang/String;

    .line 588
    const-string v1, ""

    iput-object v1, v0, Lcom/lge/uicc/PbmRecord;->additional_number_b:Ljava/lang/String;

    .line 589
    const-string v1, ""

    iput-object v1, v0, Lcom/lge/uicc/PbmRecord;->email_address:Ljava/lang/String;

    .line 591
    return-object v0
.end method

.method private newPbmRecordWithoutSimIndex(Lcom/lge/uicc/SimPhonebookBaseEntry;)Lcom/lge/uicc/PbmRecord;
    .locals 9
    .param p1, "entry"    # Lcom/lge/uicc/SimPhonebookBaseEntry;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 510
    new-instance v5, Lcom/lge/uicc/PbmRecord;

    invoke-direct {v5}, Lcom/lge/uicc/PbmRecord;-><init>()V

    .line 512
    .local v5, "records":Lcom/lge/uicc/PbmRecord;
    iput v7, v5, Lcom/lge/uicc/PbmRecord;->device:I

    .line 513
    iput v7, v5, Lcom/lge/uicc/PbmRecord;->sync_cnt:I

    .line 514
    iput v7, v5, Lcom/lge/uicc/PbmRecord;->type:I

    .line 515
    iput v7, v5, Lcom/lge/uicc/PbmRecord;->ad_type:I

    .line 516
    iget-object v6, p1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mName:Ljava/lang/String;

    iput-object v6, v5, Lcom/lge/uicc/PbmRecord;->name:Ljava/lang/String;

    .line 518
    iget-object v6, v5, Lcom/lge/uicc/PbmRecord;->name:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 519
    const-string v6, ""

    iput-object v6, v5, Lcom/lge/uicc/PbmRecord;->name:Ljava/lang/String;

    .line 522
    :cond_0
    iget-object v4, p1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mNumbers:Landroid/util/SparseArray;

    .line 523
    .local v4, "numbers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 525
    .local v3, "number":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 526
    const-string v6, ""

    iput-object v6, v5, Lcom/lge/uicc/PbmRecord;->number:Ljava/lang/String;

    .line 532
    :goto_0
    const-string v6, ""

    iput-object v6, v5, Lcom/lge/uicc/PbmRecord;->additional_number:Ljava/lang/String;

    .line 533
    const-string v6, ""

    iput-object v6, v5, Lcom/lge/uicc/PbmRecord;->additional_number_a:Ljava/lang/String;

    .line 534
    const-string v6, ""

    iput-object v6, v5, Lcom/lge/uicc/PbmRecord;->additional_number_b:Ljava/lang/String;

    .line 536
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 537
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 539
    .local v2, "length":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 540
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "number":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 541
    .restart local v3    # "number":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 542
    invoke-static {v3}, Lcom/lge/uicc/SimPhonebookService;->detectType(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/lge/uicc/PbmRecord;->ad_type:I

    .line 543
    iget v6, v5, Lcom/lge/uicc/PbmRecord;->ad_type:I

    invoke-static {v3, v6, v8}, Lcom/lge/uicc/SimPhonebookService;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    .line 545
    packed-switch v1, :pswitch_data_0

    .line 539
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 528
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_2
    invoke-static {v3}, Lcom/lge/uicc/SimPhonebookService;->detectType(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/lge/uicc/PbmRecord;->type:I

    .line 529
    iget v6, v5, Lcom/lge/uicc/PbmRecord;->type:I

    invoke-static {v3, v6, v8}, Lcom/lge/uicc/SimPhonebookService;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/lge/uicc/PbmRecord;->number:Ljava/lang/String;

    goto :goto_0

    .line 547
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :pswitch_0
    iput-object v3, v5, Lcom/lge/uicc/PbmRecord;->additional_number:Ljava/lang/String;

    goto :goto_2

    .line 551
    :pswitch_1
    iput-object v3, v5, Lcom/lge/uicc/PbmRecord;->additional_number_a:Ljava/lang/String;

    goto :goto_2

    .line 555
    :pswitch_2
    iput-object v3, v5, Lcom/lge/uicc/PbmRecord;->additional_number_b:Ljava/lang/String;

    goto :goto_2

    .line 562
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_3
    iget-object v0, p1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mEmails:Landroid/util/SparseArray;

    .line 563
    .local v0, "emails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v5, Lcom/lge/uicc/PbmRecord;->email_address:Ljava/lang/String;

    .line 564
    iget-object v6, v5, Lcom/lge/uicc/PbmRecord;->email_address:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 565
    const-string v6, ""

    iput-object v6, v5, Lcom/lge/uicc/PbmRecord;->email_address:Ljava/lang/String;

    .line 567
    :cond_4
    iget v6, p1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mGroupId:I

    iput v6, v5, Lcom/lge/uicc/PbmRecord;->gas_id:I

    .line 568
    return-object v5

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static setup()V
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/lge/uicc/SimPhonebookService;->mPbmService:Lcom/lge/uicc/SimPhonebookService;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/lge/uicc/SimPhonebookService;

    invoke-direct {v0}, Lcom/lge/uicc/SimPhonebookService;-><init>()V

    sput-object v0, Lcom/lge/uicc/SimPhonebookService;->mPbmService:Lcom/lge/uicc/SimPhonebookService;

    .line 55
    :cond_0
    const-string v0, "lguiccpbm"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 56
    const-string v0, "lguiccpbm"

    sget-object v1, Lcom/lge/uicc/SimPhonebookService;->mPbmService:Lcom/lge/uicc/SimPhonebookService;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 57
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized deleteEntry(II)I
    .locals 3
    .param p1, "slot"    # I
    .param p2, "simIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 462
    monitor-enter p0

    if-gtz p2, :cond_0

    .line 463
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteEntry: invalid sim index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    const/4 v1, 0x0

    # invokes: Lcom/lge/uicc/SimPhonebookService$PbmHandler;->deleteRecord(III)I
    invoke-static {v0, p1, v1, p2}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->access$700(Lcom/lge/uicc/SimPhonebookService$PbmHandler;III)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteGroup(II)I
    .locals 2
    .param p1, "slot"    # I
    .param p2, "groupIndex"    # I

    .prologue
    .line 470
    monitor-enter p0

    if-gtz p2, :cond_0

    .line 471
    :try_start_0
    const-string v0, "deleteGroup: gas_id MUST be greater than 0!"

    invoke-static {v0}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    const/4 v0, 0x0

    .line 474
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    const/16 v1, 0x20

    # invokes: Lcom/lge/uicc/SimPhonebookService$PbmHandler;->deleteRecord(III)I
    invoke-static {v0, p1, v1, p2}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->access$700(Lcom/lge/uicc/SimPhonebookService$PbmHandler;III)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSimPhonebookInfo(I)Lcom/lge/uicc/SimPhonebookBaseInfo;
    .locals 11
    .param p1, "slot"    # I

    .prologue
    const/4 v8, 0x0

    .line 240
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/lge/uicc/IccTools;->getSlots()I

    move-result v9

    if-lt p1, v9, :cond_1

    .line 241
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSimPhonebookInfo: error: slot="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v8

    .line 339
    :goto_0
    monitor-exit p0

    return-object v1

    .line 245
    :cond_1
    :try_start_1
    new-instance v1, Lcom/lge/uicc/SimPhonebookBaseInfo;

    invoke-direct {v1}, Lcom/lge/uicc/SimPhonebookBaseInfo;-><init>()V

    .line 246
    .local v1, "globalInfo":Lcom/lge/uicc/SimPhonebookBaseInfo;
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 249
    .local v6, "sliceInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;>;"
    const-string v9, "load ADN"

    invoke-static {v9}, Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V

    .line 250
    iget-object v9, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    const/4 v10, 0x0

    # invokes: Lcom/lge/uicc/SimPhonebookService$PbmHandler;->getInfo(II)Lcom/lge/uicc/PbmInfo;
    invoke-static {v9, p1, v10}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->access$400(Lcom/lge/uicc/SimPhonebookService$PbmHandler;II)Lcom/lge/uicc/PbmInfo;

    move-result-object v3

    .line 251
    .local v3, "info":Lcom/lge/uicc/PbmInfo;
    if-nez v3, :cond_2

    .line 252
    const-string v9, "getSimPhonebookInfo: Fails to get ADN"

    invoke-static {v9}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V

    move-object v1, v8

    .line 253
    goto :goto_0

    .line 256
    :cond_2
    iget v9, v3, Lcom/lge/uicc/PbmInfo;->status:I

    if-nez v9, :cond_3

    iget-object v9, v3, Lcom/lge/uicc/PbmInfo;->records_in_pb_set:[I

    if-nez v9, :cond_4

    .line 257
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSimPhonebookInfo: ADN: status="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/lge/uicc/PbmInfo;->status:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V

    .line 258
    const-string v9, "ADN"

    invoke-direct {p0, v9, v3}, Lcom/lge/uicc/SimPhonebookService;->dumpPbmInfo(Ljava/lang/String;Lcom/lge/uicc/PbmInfo;)V

    move-object v1, v8

    .line 259
    goto :goto_0

    .line 262
    :cond_4
    iget v9, v3, Lcom/lge/uicc/PbmInfo;->num_of_tot_rec:I

    if-nez v9, :cond_5

    .line 263
    const-string v9, "getSimPhonebookInfo: number of total record is 0!!!"

    invoke-static {v9}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V

    move-object v1, v8

    .line 264
    goto :goto_0

    .line 267
    :cond_5
    iget-object v8, v3, Lcom/lge/uicc/PbmInfo;->records_in_pb_set:[I

    array-length v8, v8

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSliceCount:I

    .line 268
    const/4 v8, 0x1

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAssignableEmailount:I

    .line 269
    const/4 v8, 0x1

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAssignableGroupCount:I

    .line 270
    const-string v8, "GSMAlpha"

    iput-object v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAdnNameEncodingType:Ljava/lang/String;

    .line 271
    iget v8, v3, Lcom/lge/uicc/PbmInfo;->max_text_length:I

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAdnNameMaxbyteLength:I

    .line 272
    iget v8, v3, Lcom/lge/uicc/PbmInfo;->max_num_length:I

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAdnNumberMaxLength:I

    .line 273
    iget v8, v3, Lcom/lge/uicc/PbmInfo;->max_num_length:I

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mExternalNumberMaxLength:I

    .line 274
    iget v8, v3, Lcom/lge/uicc/PbmInfo;->num_of_free_ext:I

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mFreeExternalNumberCount:I

    .line 275
    const-string v8, ""

    iput-object v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mGroupNameEncodingType:Ljava/lang/String;

    .line 276
    const/4 v8, 0x0

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mTotalGroupCount:I

    .line 277
    const/4 v8, 0x0

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mGroupNameMaxByteLength:I

    .line 279
    const/4 v7, 0x0

    .line 280
    .local v7, "totalAdn":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    iget-object v8, v3, Lcom/lge/uicc/PbmInfo;->records_in_pb_set:[I

    array-length v8, v8

    if-ge v2, v8, :cond_6

    .line 281
    new-instance v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;

    invoke-direct {v5}, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;-><init>()V

    .line 282
    .local v5, "slice":Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    iget-object v8, v3, Lcom/lge/uicc/PbmInfo;->records_in_pb_set:[I

    aget v8, v8, v2

    iput v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mAdnCount:I

    .line 283
    invoke-virtual {v6, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 284
    iget-object v8, v3, Lcom/lge/uicc/PbmInfo;->records_in_pb_set:[I

    aget v8, v8, v2

    add-int/2addr v7, v8

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 286
    .end local v5    # "slice":Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    :cond_6
    iput v7, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mTotalAdncount:I

    .line 287
    const-string v8, "onAdn"

    invoke-direct {p0, v8, v3}, Lcom/lge/uicc/SimPhonebookService;->dumpPbmInfo(Ljava/lang/String;Lcom/lge/uicc/PbmInfo;)V

    .line 290
    const-string v8, "load ANR"

    invoke-static {v8}, Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V

    .line 291
    const/4 v4, 0x0

    .local v4, "key":I
    const/16 v0, 0xf

    .local v0, "efdev":I
    :goto_2
    const/16 v8, 0x16

    if-gt v0, v8, :cond_7

    .line 292
    iget-object v8, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    # invokes: Lcom/lge/uicc/SimPhonebookService$PbmHandler;->getInfo(II)Lcom/lge/uicc/PbmInfo;
    invoke-static {v8, p1, v0}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->access$400(Lcom/lge/uicc/SimPhonebookService$PbmHandler;II)Lcom/lge/uicc/PbmInfo;

    move-result-object v3

    .line 293
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;

    .line 294
    .restart local v5    # "slice":Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    if-eqz v3, :cond_7

    if-nez v5, :cond_9

    .line 307
    .end local v5    # "slice":Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    :cond_7
    const-string v8, "load EMAIL"

    invoke-static {v8}, Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V

    .line 308
    const/4 v4, 0x0

    const/4 v0, 0x7

    :goto_3
    const/16 v8, 0xe

    if-gt v0, v8, :cond_8

    .line 309
    iget-object v8, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    # invokes: Lcom/lge/uicc/SimPhonebookService$PbmHandler;->getInfo(II)Lcom/lge/uicc/PbmInfo;
    invoke-static {v8, p1, v0}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->access$400(Lcom/lge/uicc/SimPhonebookService$PbmHandler;II)Lcom/lge/uicc/PbmInfo;

    move-result-object v3

    .line 310
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;

    .line 311
    .restart local v5    # "slice":Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    if-eqz v3, :cond_8

    if-nez v5, :cond_b

    .line 337
    .end local v5    # "slice":Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    :cond_8
    const-string v8, "return SimPhonebookBaseInfo"

    invoke-static {v8}, Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V

    .line 338
    iput-object v6, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSlices:Landroid/util/SparseArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 240
    .end local v0    # "efdev":I
    .end local v1    # "globalInfo":Lcom/lge/uicc/SimPhonebookBaseInfo;
    .end local v2    # "index":I
    .end local v3    # "info":Lcom/lge/uicc/PbmInfo;
    .end local v4    # "key":I
    .end local v6    # "sliceInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;>;"
    .end local v7    # "totalAdn":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 296
    .restart local v0    # "efdev":I
    .restart local v1    # "globalInfo":Lcom/lge/uicc/SimPhonebookBaseInfo;
    .restart local v2    # "index":I
    .restart local v3    # "info":Lcom/lge/uicc/PbmInfo;
    .restart local v4    # "key":I
    .restart local v5    # "slice":Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    .restart local v6    # "sliceInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;>;"
    .restart local v7    # "totalAdn":I
    :cond_9
    const/16 v8, 0xf

    if-ne v0, v8, :cond_a

    .line 297
    const/16 v8, 0x14

    :try_start_2
    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAnrMaxLength:I

    .line 298
    iget-object v8, v3, Lcom/lge/uicc/PbmInfo;->records_in_pb_set:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAssignableAnrCount:I

    .line 300
    :cond_a
    iget v8, v3, Lcom/lge/uicc/PbmInfo;->file_type:I

    and-int/lit8 v8, v8, 0xf

    iput v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mAnrType:I

    .line 301
    iget v8, v3, Lcom/lge/uicc/PbmInfo;->num_of_tot_rec:I

    iput v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mAnrCount:I

    .line 302
    iget-object v8, v3, Lcom/lge/uicc/PbmInfo;->used_records_in_pb_set:[I

    iput-object v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mUsedAnrCount:[I

    .line 303
    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 304
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onAnr["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/lge/uicc/SimPhonebookService;->dumpPbmInfo(Ljava/lang/String;Lcom/lge/uicc/PbmInfo;)V

    .line 291
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 313
    :cond_b
    const/4 v8, 0x7

    if-ne v0, v8, :cond_c

    .line 314
    iget v8, v3, Lcom/lge/uicc/PbmInfo;->max_text_length:I

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mEmailMaxByteLength:I

    .line 315
    const-string v8, "GSM7"

    iput-object v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mEmailencodingType:Ljava/lang/String;

    .line 317
    :cond_c
    iget v8, v3, Lcom/lge/uicc/PbmInfo;->file_type:I

    and-int/lit8 v8, v8, 0xf

    iput v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mEmailType:I

    .line 318
    iget v8, v3, Lcom/lge/uicc/PbmInfo;->num_of_tot_rec:I

    iput v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mEmailCount:I

    .line 319
    iget-object v8, v3, Lcom/lge/uicc/PbmInfo;->used_records_in_pb_set:[I

    iput-object v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mUsedEmailCount:[I

    .line 320
    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 321
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onEmail["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/lge/uicc/SimPhonebookService;->dumpPbmInfo(Ljava/lang/String;Lcom/lge/uicc/PbmInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3
.end method

.method public declared-synchronized insertEntry(IILcom/lge/uicc/SimPhonebookBaseEntry;)I
    .locals 4
    .param p1, "slot"    # I
    .param p2, "simIndex"    # I
    .param p3, "entry"    # Lcom/lge/uicc/SimPhonebookBaseEntry;

    .prologue
    const/4 v1, 0x0

    .line 400
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/lge/uicc/IccTools;->getSlots()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 401
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertEntry: error: slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :goto_0
    monitor-exit p0

    return v1

    .line 405
    :cond_1
    if-gtz p2, :cond_2

    .line 406
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertEntry: invalid sim index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 400
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 410
    :cond_2
    :try_start_2
    invoke-direct {p0, p3}, Lcom/lge/uicc/SimPhonebookService;->newPbmRecordWithoutSimIndex(Lcom/lge/uicc/SimPhonebookBaseEntry;)Lcom/lge/uicc/PbmRecord;

    move-result-object v0

    .line 411
    .local v0, "record":Lcom/lge/uicc/PbmRecord;
    iput p2, v0, Lcom/lge/uicc/PbmRecord;->index:I

    .line 413
    iget-object v1, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    # invokes: Lcom/lge/uicc/SimPhonebookService$PbmHandler;->writeRecord(ILcom/lge/uicc/PbmRecord;)I
    invoke-static {v1, p1, v0}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->access$600(Lcom/lge/uicc/SimPhonebookService$PbmHandler;ILcom/lge/uicc/PbmRecord;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized insertGroup(IILcom/lge/uicc/SimPhonebookBaseEntry;)I
    .locals 3
    .param p1, "slot"    # I
    .param p2, "groupIndex"    # I
    .param p3, "group"    # Lcom/lge/uicc/SimPhonebookBaseEntry;

    .prologue
    .line 417
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/lge/uicc/IccTools;->getSlots()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 418
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertGroup: error: slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    const/4 v1, 0x0

    .line 425
    :goto_0
    monitor-exit p0

    return v1

    .line 422
    :cond_1
    :try_start_1
    invoke-direct {p0, p3}, Lcom/lge/uicc/SimPhonebookService;->newPbmGroupRecordWithoutGroupIndex(Lcom/lge/uicc/SimPhonebookBaseEntry;)Lcom/lge/uicc/PbmRecord;

    move-result-object v0

    .line 423
    .local v0, "record":Lcom/lge/uicc/PbmRecord;
    iput p2, v0, Lcom/lge/uicc/PbmRecord;->index:I

    .line 425
    iget-object v1, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    # invokes: Lcom/lge/uicc/SimPhonebookService$PbmHandler;->writeRecord(ILcom/lge/uicc/PbmRecord;)I
    invoke-static {v1, p1, v0}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->access$600(Lcom/lge/uicc/SimPhonebookService$PbmHandler;ILcom/lge/uicc/PbmRecord;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 417
    .end local v0    # "record":Lcom/lge/uicc/PbmRecord;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized readEntry(II)Lcom/lge/uicc/SimPhonebookBaseEntry;
    .locals 8
    .param p1, "slot"    # I
    .param p2, "simIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 343
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/lge/uicc/IccTools;->getSlots()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 344
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readEntry: error: slot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    :goto_0
    monitor-exit p0

    return-object v1

    .line 348
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    const/4 v5, 0x0

    # invokes: Lcom/lge/uicc/SimPhonebookService$PbmHandler;->readRecord(III)Lcom/lge/uicc/PbmRecord;
    invoke-static {v4, p1, v5, p2}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->access$500(Lcom/lge/uicc/SimPhonebookService$PbmHandler;III)Lcom/lge/uicc/PbmRecord;

    move-result-object v3

    .line 349
    .local v3, "record":Lcom/lge/uicc/PbmRecord;
    new-instance v1, Lcom/lge/uicc/SimPhonebookBaseEntry;

    invoke-direct {v1}, Lcom/lge/uicc/SimPhonebookBaseEntry;-><init>()V

    .line 350
    .local v1, "entry":Lcom/lge/uicc/SimPhonebookBaseEntry;
    if-nez v3, :cond_2

    .line 351
    const/4 v4, 0x0

    iput v4, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mIndex:I

    .line 352
    const-string v4, ""

    iput-object v4, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mName:Ljava/lang/String;

    .line 353
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mNumbers:Landroid/util/SparseArray;

    .line 354
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mEmails:Landroid/util/SparseArray;

    .line 355
    const/4 v4, 0x0

    iput v4, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mGroupId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 343
    .end local v1    # "entry":Lcom/lge/uicc/SimPhonebookBaseEntry;
    .end local v3    # "record":Lcom/lge/uicc/PbmRecord;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 357
    .restart local v1    # "entry":Lcom/lge/uicc/SimPhonebookBaseEntry;
    .restart local v3    # "record":Lcom/lge/uicc/PbmRecord;
    :cond_2
    :try_start_2
    iget v4, v3, Lcom/lge/uicc/PbmRecord;->index:I

    iput v4, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mIndex:I

    .line 358
    iget-object v4, v3, Lcom/lge/uicc/PbmRecord;->name:Ljava/lang/String;

    if-nez v4, :cond_6

    const-string v4, ""

    :goto_1
    iput-object v4, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mName:Ljava/lang/String;

    .line 359
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 360
    .local v2, "numbers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v4, 0x0

    iget-object v5, v3, Lcom/lge/uicc/PbmRecord;->number:Ljava/lang/String;

    iget v6, v3, Lcom/lge/uicc/PbmRecord;->type:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/lge/uicc/SimPhonebookService;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 361
    const-string v4, ""

    iget-object v5, v3, Lcom/lge/uicc/PbmRecord;->additional_number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 362
    const/4 v4, 0x1

    iget-object v5, v3, Lcom/lge/uicc/PbmRecord;->additional_number:Ljava/lang/String;

    iget v6, v3, Lcom/lge/uicc/PbmRecord;->ad_type:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/lge/uicc/SimPhonebookService;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 364
    :cond_3
    const-string v4, ""

    iget-object v5, v3, Lcom/lge/uicc/PbmRecord;->additional_number_a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 365
    const/4 v4, 0x2

    iget-object v5, v3, Lcom/lge/uicc/PbmRecord;->additional_number_a:Ljava/lang/String;

    iget v6, v3, Lcom/lge/uicc/PbmRecord;->ad_type:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/lge/uicc/SimPhonebookService;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 367
    :cond_4
    const-string v4, ""

    iget-object v5, v3, Lcom/lge/uicc/PbmRecord;->additional_number_b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 368
    const/4 v4, 0x3

    iget-object v5, v3, Lcom/lge/uicc/PbmRecord;->additional_number_b:Ljava/lang/String;

    iget v6, v3, Lcom/lge/uicc/PbmRecord;->ad_type:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/lge/uicc/SimPhonebookService;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    :cond_5
    iput-object v2, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mNumbers:Landroid/util/SparseArray;

    .line 372
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 373
    .local v0, "emails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v5, 0x0

    iget-object v4, v3, Lcom/lge/uicc/PbmRecord;->email_address:Ljava/lang/String;

    if-nez v4, :cond_7

    const-string v4, ""

    :goto_2
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 374
    iput-object v0, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mEmails:Landroid/util/SparseArray;

    .line 375
    iget v4, v3, Lcom/lge/uicc/PbmRecord;->gas_id:I

    iput v4, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mGroupId:I

    goto/16 :goto_0

    .line 358
    .end local v0    # "emails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v2    # "numbers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_6
    iget-object v4, v3, Lcom/lge/uicc/PbmRecord;->name:Ljava/lang/String;

    goto :goto_1

    .line 373
    .restart local v0    # "emails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v2    # "numbers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_7
    iget-object v4, v3, Lcom/lge/uicc/PbmRecord;->email_address:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized readGroup(II)Lcom/lge/uicc/SimPhonebookBaseEntry;
    .locals 4
    .param p1, "slot"    # I
    .param p2, "groupIndex"    # I

    .prologue
    .line 381
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/lge/uicc/IccTools;->getSlots()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 382
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readGroup: error: slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    const/4 v0, 0x0

    .line 396
    :goto_0
    monitor-exit p0

    return-object v0

    .line 386
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    const/16 v3, 0x20

    # invokes: Lcom/lge/uicc/SimPhonebookService$PbmHandler;->readRecord(III)Lcom/lge/uicc/PbmRecord;
    invoke-static {v2, p1, v3, p2}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->access$500(Lcom/lge/uicc/SimPhonebookService$PbmHandler;III)Lcom/lge/uicc/PbmRecord;

    move-result-object v1

    .line 387
    .local v1, "record":Lcom/lge/uicc/PbmRecord;
    new-instance v0, Lcom/lge/uicc/SimPhonebookBaseEntry;

    invoke-direct {v0}, Lcom/lge/uicc/SimPhonebookBaseEntry;-><init>()V

    .line 388
    .local v0, "group":Lcom/lge/uicc/SimPhonebookBaseEntry;
    if-nez v1, :cond_2

    .line 389
    const/4 v2, 0x0

    iput v2, v0, Lcom/lge/uicc/SimPhonebookBaseEntry;->mIndex:I

    .line 390
    const-string v2, ""

    iput-object v2, v0, Lcom/lge/uicc/SimPhonebookBaseEntry;->mName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 381
    .end local v0    # "group":Lcom/lge/uicc/SimPhonebookBaseEntry;
    .end local v1    # "record":Lcom/lge/uicc/PbmRecord;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 392
    .restart local v0    # "group":Lcom/lge/uicc/SimPhonebookBaseEntry;
    .restart local v1    # "record":Lcom/lge/uicc/PbmRecord;
    :cond_2
    :try_start_2
    iget v2, v1, Lcom/lge/uicc/PbmRecord;->index:I

    iput v2, v0, Lcom/lge/uicc/SimPhonebookBaseEntry;->mIndex:I

    .line 393
    iget-object v2, v1, Lcom/lge/uicc/PbmRecord;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/lge/uicc/SimPhonebookBaseEntry;->mName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized updateEntry(IILcom/lge/uicc/SimPhonebookBaseEntry;)I
    .locals 4
    .param p1, "slot"    # I
    .param p2, "simIndex"    # I
    .param p3, "entry"    # Lcom/lge/uicc/SimPhonebookBaseEntry;

    .prologue
    const/4 v1, 0x0

    .line 429
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/lge/uicc/IccTools;->getSlots()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 430
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEntry: error: slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    :goto_0
    monitor-exit p0

    return v1

    .line 433
    :cond_1
    if-gtz p2, :cond_2

    .line 434
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEntry: invalid sim index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 429
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 438
    :cond_2
    :try_start_2
    invoke-direct {p0, p3}, Lcom/lge/uicc/SimPhonebookService;->newPbmRecordWithoutSimIndex(Lcom/lge/uicc/SimPhonebookBaseEntry;)Lcom/lge/uicc/PbmRecord;

    move-result-object v0

    .line 439
    .local v0, "record":Lcom/lge/uicc/PbmRecord;
    iput p2, v0, Lcom/lge/uicc/PbmRecord;->index:I

    .line 441
    iget-object v1, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    # invokes: Lcom/lge/uicc/SimPhonebookService$PbmHandler;->writeRecord(ILcom/lge/uicc/PbmRecord;)I
    invoke-static {v1, p1, v0}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->access$600(Lcom/lge/uicc/SimPhonebookService$PbmHandler;ILcom/lge/uicc/PbmRecord;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized updateGroup(IILcom/lge/uicc/SimPhonebookBaseEntry;)I
    .locals 4
    .param p1, "slot"    # I
    .param p2, "groupIndex"    # I
    .param p3, "group"    # Lcom/lge/uicc/SimPhonebookBaseEntry;

    .prologue
    const/4 v1, 0x0

    .line 445
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/lge/uicc/IccTools;->getSlots()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 446
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGroup: error: slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    :goto_0
    monitor-exit p0

    return v1

    .line 449
    :cond_1
    if-gtz p2, :cond_2

    .line 450
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGroup: invalid group index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 445
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 454
    :cond_2
    :try_start_2
    invoke-direct {p0, p3}, Lcom/lge/uicc/SimPhonebookService;->newPbmGroupRecordWithoutGroupIndex(Lcom/lge/uicc/SimPhonebookBaseEntry;)Lcom/lge/uicc/PbmRecord;

    move-result-object v0

    .line 455
    .local v0, "record":Lcom/lge/uicc/PbmRecord;
    iput p2, v0, Lcom/lge/uicc/PbmRecord;->index:I

    .line 457
    iget-object v1, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    # invokes: Lcom/lge/uicc/SimPhonebookService$PbmHandler;->writeRecord(ILcom/lge/uicc/PbmRecord;)I
    invoke-static {v1, p1, v0}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->access$600(Lcom/lge/uicc/SimPhonebookService$PbmHandler;ILcom/lge/uicc/PbmRecord;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0
.end method
