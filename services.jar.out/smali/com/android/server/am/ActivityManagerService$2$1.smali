.class Lcom/android/server/am/ActivityManagerService$2$1;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$2;

.field final synthetic val$memInfos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$2;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$2$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 39

    .prologue
    .line 1511
    new-instance v24, Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 1513
    .local v24, "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    const/16 v23, 0x0

    .local v23, "i":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    .local v18, "N":I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 1514
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->val$memInfos:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessMemInfo;

    .line 1515
    .local v3, "mi":Lcom/android/server/am/ProcessMemInfo;
    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->pid:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1513
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 1517
    .end local v3    # "mi":Lcom/android/server/am/ProcessMemInfo;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 1518
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v4, Lcom/android/server/am/ActivityManagerService;->mProcessCpuThread:Ljava/lang/Thread;

    monitor-enter v10

    .line 1519
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v4}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v18

    .line 1520
    const/16 v23, 0x0

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 1521
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v34

    .line 1522
    .local v34, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v34

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    .line 1523
    move-object/from16 v0, v34

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/Debug;->getPss(I[J)J

    move-result-wide v32

    .line 1524
    .local v32, "pss":J
    const-wide/16 v4, 0x0

    cmp-long v4, v32, v4

    if-lez v4, :cond_1

    .line 1525
    move-object/from16 v0, v34

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_1

    .line 1526
    new-instance v3, Lcom/android/server/am/ProcessMemInfo;

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, v34

    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/16 v6, -0x11

    const/4 v7, -0x1

    const-string v8, "native"

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/ProcessMemInfo;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    .line 1528
    .restart local v3    # "mi":Lcom/android/server/am/ProcessMemInfo;
    move-wide/from16 v0, v32

    iput-wide v0, v3, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 1529
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1520
    .end local v3    # "mi":Lcom/android/server/am/ProcessMemInfo;
    .end local v32    # "pss":J
    :cond_1
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 1534
    .end local v34    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_2
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1536
    const-wide/16 v37, 0x0

    .line 1537
    .local v37, "totalPss":J
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    :goto_2
    move/from16 v0, v23

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 1538
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->val$memInfos:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessMemInfo;

    .line 1539
    .restart local v3    # "mi":Lcom/android/server/am/ProcessMemInfo;
    iget-wide v4, v3, Lcom/android/server/am/ProcessMemInfo;->pss:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_3

    .line 1540
    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->pid:I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/Debug;->getPss(I[J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 1542
    :cond_3
    iget-wide v4, v3, Lcom/android/server/am/ProcessMemInfo;->pss:J

    add-long v37, v37, v4

    .line 1537
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 1534
    .end local v3    # "mi":Lcom/android/server/am/ProcessMemInfo;
    .end local v37    # "totalPss":J
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1544
    .restart local v37    # "totalPss":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->val$memInfos:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/am/ActivityManagerService$2$1$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/am/ActivityManagerService$2$1$1;-><init>(Lcom/android/server/am/ActivityManagerService$2$1;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1556
    new-instance v36, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1557
    .local v36, "tag":Ljava/lang/StringBuilder;
    new-instance v35, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1558
    .local v35, "stack":Ljava/lang/StringBuilder;
    const-string v4, "Low on memory -- "

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    const-string v4, "total"

    const/4 v5, 0x0

    move-object/from16 v0, v36

    move-wide/from16 v1, v37

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 1560
    const-string v4, "total"

    const/4 v5, 0x1

    move-object/from16 v0, v35

    move-wide/from16 v1, v37

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 1562
    new-instance v29, Ljava/lang/StringBuilder;

    const/16 v4, 0x400

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1563
    .local v29, "logBuilder":Ljava/lang/StringBuilder;
    const-string v4, "Low on memory:\n"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    const/16 v21, 0x1

    .line 1566
    .local v21, "firstLine":Z
    const/high16 v28, -0x80000000

    .line 1567
    .local v28, "lastOomAdj":I
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    :goto_3
    move/from16 v0, v23

    move/from16 v1, v18

    if-ge v0, v1, :cond_10

    .line 1568
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->val$memInfos:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessMemInfo;

    .line 1570
    .restart local v3    # "mi":Lcom/android/server/am/ProcessMemInfo;
    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v5, -0x11

    if-eq v4, v5, :cond_e

    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_5

    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_5

    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_e

    .line 1574
    :cond_5
    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    move/from16 v0, v28

    if-eq v0, v4, :cond_c

    .line 1575
    iget v0, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    move/from16 v28, v0

    .line 1576
    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-gtz v4, :cond_6

    .line 1577
    const-string v4, " / "

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    :cond_6
    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ltz v4, :cond_b

    .line 1580
    if-eqz v21, :cond_7

    .line 1581
    const-string v4, ":"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1582
    const/16 v21, 0x0

    .line 1584
    :cond_7
    const-string v4, "\n\t at "

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    :goto_4
    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-gtz v4, :cond_8

    .line 1593
    iget-wide v4, v3, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-object v8, v3, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, v36

    invoke-static {v0, v4, v5, v8, v9}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 1595
    :cond_8
    iget-wide v4, v3, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-object v8, v3, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    const/4 v9, 0x1

    move-object/from16 v0, v35

    invoke-static {v0, v4, v5, v8, v9}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 1596
    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ltz v4, :cond_e

    add-int/lit8 v4, v23, 0x1

    move/from16 v0, v18

    if-ge v4, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->val$memInfos:Ljava/util/ArrayList;

    add-int/lit8 v5, v23, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessMemInfo;

    iget v4, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    move/from16 v0, v28

    if-eq v4, v0, :cond_e

    .line 1598
    :cond_9
    const-string v4, "("

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1599
    const/16 v27, 0x0

    .local v27, "k":I
    :goto_5
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    array-length v4, v4

    move/from16 v0, v27

    if-ge v0, v4, :cond_d

    .line 1600
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    aget v4, v4, v27

    iget v5, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ne v4, v5, :cond_a

    .line 1601
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    aget-object v4, v4, v27

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    const-string v4, ":"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    aget v4, v4, v27

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1599
    :cond_a
    add-int/lit8 v27, v27, 0x1

    goto :goto_5

    .line 1586
    .end local v27    # "k":I
    :cond_b
    const-string v4, "$"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1589
    :cond_c
    const-string v4, " "

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    const-string v4, "$"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1606
    .restart local v27    # "k":I
    :cond_d
    const-string v4, ")"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    .end local v27    # "k":I
    :cond_e
    const-string v4, "  "

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1611
    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    invoke-static {v4}, Lcom/android/server/am/ProcessList;->makeOomAdjString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    const/16 v4, 0x20

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1613
    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->procState:I

    invoke-static {v4}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    const/16 v4, 0x20

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1615
    iget-wide v4, v3, Lcom/android/server/am/ProcessMemInfo;->pss:J

    move-object/from16 v0, v29

    invoke-static {v0, v4, v5}, Lcom/android/server/am/ProcessList;->appendRamKb(Ljava/lang/StringBuilder;J)V

    .line 1616
    const-string v4, " kB: "

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    iget-object v4, v3, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    const-string v4, " ("

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->pid:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1620
    const-string v4, ") "

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    iget-object v4, v3, Lcom/android/server/am/ProcessMemInfo;->adjType:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    const/16 v4, 0xa

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1623
    iget-object v4, v3, Lcom/android/server/am/ProcessMemInfo;->adjReason:Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 1624
    const-string v4, "                      "

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    iget-object v4, v3, Lcom/android/server/am/ProcessMemInfo;->adjReason:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    const/16 v4, 0xa

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1567
    :cond_f
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_3

    .line 1630
    .end local v3    # "mi":Lcom/android/server/am/ProcessMemInfo;
    :cond_10
    const-string v4, "           "

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    move-object/from16 v0, v29

    move-wide/from16 v1, v37

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ProcessList;->appendRamKb(Ljava/lang/StringBuilder;J)V

    .line 1632
    const-string v4, " kB: TOTAL\n"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    const/16 v4, 0xa

    new-array v0, v4, [J

    move-object/from16 v25, v0

    .line 1635
    .local v25, "infos":[J
    invoke-static/range {v25 .. v25}, Landroid/os/Debug;->getMemInfo([J)V

    .line 1636
    const-string v4, "  MemInfo: "

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    const/16 v4, 0x8

    aget-wide v4, v25, v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kB slab, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    const/4 v4, 0x7

    aget-wide v4, v25, v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kB shmem, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    const/4 v4, 0x2

    aget-wide v4, v25, v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kB buffers, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    const/4 v4, 0x3

    aget-wide v4, v25, v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kB cached, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1641
    const/4 v4, 0x1

    aget-wide v4, v25, v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kB free\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    const/16 v4, 0x9

    aget-wide v4, v25, v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_11

    .line 1643
    const-string v4, "  ZRAM: "

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    const/16 v4, 0x9

    aget-wide v4, v25, v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1645
    const-string v4, " kB RAM, "

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1646
    const/4 v4, 0x4

    aget-wide v4, v25, v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1647
    const-string v4, " kB swap total, "

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    const/4 v4, 0x5

    aget-wide v4, v25, v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1649
    const-string v4, " kB swap free\n"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    :cond_11
    const-string v4, "1"

    const-string v5, "ro.debuggable"

    const-string v8, "0"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    .line 1653
    .local v26, "isDebuggable":Z
    if-eqz v26, :cond_13

    .line 1655
    new-instance v22, Lcom/android/server/am/GraphicMemoryInfo;

    invoke-direct/range {v22 .. v22}, Lcom/android/server/am/GraphicMemoryInfo;-><init>()V

    .line 1656
    .local v22, "gmi":Lcom/android/server/am/GraphicMemoryInfo;
    if-nez v22, :cond_12

    .line 1657
    const-string v4, "GraphicMemoryInfo class isn\'t created"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    :cond_12
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/GraphicMemoryInfo;->printGraphicMemory()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1661
    .end local v22    # "gmi":Lcom/android/server/am/GraphicMemoryInfo;
    :cond_13
    const-string v4, "ActivityManager"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    new-instance v20, Ljava/lang/StringBuilder;

    const/16 v4, 0x400

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1674
    .local v20, "dropBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1675
    const/16 v4, 0xa

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1676
    const/16 v4, 0xa

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1677
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1678
    const/16 v4, 0xa

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1683
    new-instance v19, Ljava/io/StringWriter;

    invoke-direct/range {v19 .. v19}, Ljava/io/StringWriter;-><init>()V

    .line 1684
    .local v19, "catSw":Ljava/io/StringWriter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v12, v4, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    .line 1685
    :try_start_2
    new-instance v6, Lcom/android/internal/util/FastPrintWriter;

    const/4 v4, 0x0

    const/16 v5, 0x100

    move-object/from16 v0, v19

    invoke-direct {v6, v0, v4, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 1686
    .local v6, "catPw":Ljava/io/PrintWriter;
    const/4 v4, 0x0

    new-array v7, v4, [Ljava/lang/String;

    .line 1687
    .local v7, "emptyArgs":[Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 1688
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityManagerService;->dumpProcessesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V

    .line 1689
    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 1690
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/ActiveServices;->dumpServicesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V

    .line 1692
    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 1693
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/ActivityManagerService;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V

    .line 1694
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 1695
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1696
    invoke-virtual/range {v19 .. v19}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1697
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v8, v4, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v9, "lowmem"

    const/4 v10, 0x0

    const-string v11, "system_server"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v8 .. v17}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1701
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1702
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    .line 1703
    .local v30, "now":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v8, v4, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    cmp-long v4, v8, v30

    if-gez v4, :cond_14

    .line 1704
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-wide/from16 v0, v30

    iput-wide v0, v4, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    .line 1706
    :cond_14
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1707
    return-void

    .line 1695
    .end local v6    # "catPw":Ljava/io/PrintWriter;
    .end local v7    # "emptyArgs":[Ljava/lang/String;
    .end local v30    # "now":J
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 1706
    .restart local v6    # "catPw":Ljava/io/PrintWriter;
    .restart local v7    # "emptyArgs":[Ljava/lang/String;
    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4
.end method
