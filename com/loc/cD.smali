.class public final Lcom/loc/cD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final blG:Ljava/util/regex/Pattern;

.field private static final blT:Ljava/io/OutputStream;


# instance fields
.field private final blH:Ljava/io/File;

.field private final blI:Ljava/io/File;

.field private final blJ:Ljava/io/File;

.field private final blK:Ljava/io/File;

.field private final blL:I

.field private blM:Ljava/io/Writer;

.field private final blN:Ljava/util/LinkedHashMap;

.field private blO:I

.field private blP:Lcom/loc/bk;

.field private blQ:J

.field final blR:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final blS:Ljava/util/concurrent/Callable;

.field private final g:I

.field private h:J

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/loc/cD;->blG:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/loc/bp;

    invoke-direct {v0}, Lcom/loc/bp;-><init>()V

    sput-object v0, Lcom/loc/cD;->blT:Ljava/io/OutputStream;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .registers 14

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/loc/cD;->j:J

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/loc/cD;->blN:Ljava/util/LinkedHashMap;

    iput-wide v4, p0, Lcom/loc/cD;->blQ:J

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/loc/cD;->blR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/loc/ax;

    invoke-direct {v0, p0}, Lcom/loc/ax;-><init>(Lcom/loc/cD;)V

    iput-object v0, p0, Lcom/loc/cD;->blS:Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lcom/loc/cD;->blH:Ljava/io/File;

    iput p2, p0, Lcom/loc/cD;->g:I

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/cD;->blI:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/cD;->blJ:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/cD;->blK:Ljava/io/File;

    iput p3, p0, Lcom/loc/cD;->blL:I

    iput-wide p4, p0, Lcom/loc/cD;->h:J

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .registers 2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public static bHg(Ljava/io/File;IIJ)Lcom/loc/cD;
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_13

    :goto_8
    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move v0, v1

    goto :goto_8

    :cond_15
    if-lez p2, :cond_46

    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "journal.bkp"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4f

    :goto_25
    new-instance v0, Lcom/loc/cD;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/loc/cD;-><init>(Ljava/io/File;IIJ)V

    iget-object v1, v0, Lcom/loc/cD;->blI:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_65

    :goto_36
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lcom/loc/cD;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/loc/cD;-><init>(Ljava/io/File;IIJ)V

    invoke-direct {v0}, Lcom/loc/cD;->g()V

    return-object v0

    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "journal"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_61

    invoke-static {v0, v2, v1}, Lcom/loc/cD;->bHi(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_25

    :cond_61
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_25

    :cond_65
    :try_start_65
    invoke-direct {v0}, Lcom/loc/cD;->e()V

    invoke-direct {v0}, Lcom/loc/cD;->f()V

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/loc/cD;->blI:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/loc/G;->beb:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/loc/cD;->blM:Ljava/io/Writer;
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_81} :catch_82

    return-object v0

    :catch_82
    move-exception v1

    invoke-virtual {v0}, Lcom/loc/cD;->c()V

    goto :goto_36
.end method

.method private bHh(Ljava/lang/String;)V
    .registers 9

    const/16 v1, 0x20

    const/4 v6, 0x0

    const/4 v5, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v5, :cond_41

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-eq v3, v5, :cond_5b

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_16
    move-object v1, v0

    iget-object v0, p0, Lcom/loc/cD;->blN:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/O;

    if-eqz v0, :cond_77

    :goto_21
    if-ne v3, v5, :cond_82

    :cond_23
    if-eq v3, v5, :cond_ac

    :cond_25
    if-eq v3, v5, :cond_c7

    :cond_27
    :goto_27
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "REMOVE"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_16

    const-string/jumbo v1, "REMOVE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/loc/cD;->blN:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_77
    new-instance v0, Lcom/loc/O;

    invoke-direct {v0, p0, v1, v6}, Lcom/loc/O;-><init>(Lcom/loc/cD;Ljava/lang/String;Lcom/loc/ax;)V

    iget-object v4, p0, Lcom/loc/cD;->blN:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_82
    const-string/jumbo v1, "CLEAN"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_23

    const-string/jumbo v1, "CLEAN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/loc/O;->bwH(Lcom/loc/O;Z)Z

    invoke-static {v0, v6}, Lcom/loc/O;->bwI(Lcom/loc/O;Lcom/loc/bV;)Lcom/loc/bV;

    invoke-static {v0, v1}, Lcom/loc/O;->bwJ(Lcom/loc/O;[Ljava/lang/String;)V

    :cond_ab
    :goto_ab
    return-void

    :cond_ac
    const-string/jumbo v1, "DIRTY"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_25

    const-string/jumbo v1, "DIRTY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    new-instance v1, Lcom/loc/bV;

    invoke-direct {v1, p0, v0, v6}, Lcom/loc/bV;-><init>(Lcom/loc/cD;Lcom/loc/O;Lcom/loc/ax;)V

    invoke-static {v0, v1}, Lcom/loc/O;->bwI(Lcom/loc/O;Lcom/loc/bV;)Lcom/loc/bV;

    goto :goto_ab

    :cond_c7
    const-string/jumbo v0, "READ"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v2, v0, :cond_27

    const-string/jumbo v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ab

    goto/16 :goto_27
.end method

.method private static bHi(Ljava/io/File;Ljava/io/File;Z)V
    .registers 4

    if-nez p2, :cond_9

    :goto_2
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_9
    invoke-static {p1}, Lcom/loc/cD;->a(Ljava/io/File;)V

    goto :goto_2

    :cond_d
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method private declared-synchronized bHj(Ljava/lang/String;J)Lcom/loc/bV;
    .registers 10

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/loc/cD;->i()V

    invoke-direct {p0, p1}, Lcom/loc/cD;->bHm(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/cD;->blN:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/O;
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_65

    const-wide/16 v2, -0x1

    cmp-long v1, p2, v2

    if-eqz v1, :cond_22

    if-nez v0, :cond_1a

    :cond_18
    monitor-exit p0

    return-object v4

    :cond_1a
    :try_start_1a
    invoke-static {v0}, Lcom/loc/O;->bwO(Lcom/loc/O;)J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-nez v1, :cond_18

    :cond_22
    if-eqz v0, :cond_59

    invoke-static {v0}, Lcom/loc/O;->bwK(Lcom/loc/O;)Lcom/loc/bV;

    move-result-object v1

    if-nez v1, :cond_68

    :goto_2a
    new-instance v1, Lcom/loc/bV;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/loc/bV;-><init>(Lcom/loc/cD;Lcom/loc/O;Lcom/loc/ax;)V

    invoke-static {v0, v1}, Lcom/loc/O;->bwI(Lcom/loc/O;Lcom/loc/bV;)Lcom/loc/bV;

    iget-object v0, p0, Lcom/loc/cD;->blM:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DIRTY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/cD;->blM:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_57
    .catchall {:try_start_1a .. :try_end_57} :catchall_65

    monitor-exit p0

    return-object v1

    :cond_59
    :try_start_59
    new-instance v0, Lcom/loc/O;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/loc/O;-><init>(Lcom/loc/cD;Ljava/lang/String;Lcom/loc/ax;)V

    iget-object v1, p0, Lcom/loc/cD;->blN:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_64
    .catchall {:try_start_59 .. :try_end_64} :catchall_65

    goto :goto_2a

    :catchall_65
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_68
    monitor-exit p0

    return-object v4
.end method

.method private declared-synchronized bHk(Lcom/loc/bV;Z)V
    .registers 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    invoke-static {p1}, Lcom/loc/bV;->bDP(Lcom/loc/bV;)Lcom/loc/O;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/O;->bwK(Lcom/loc/O;)Lcom/loc/bV;

    move-result-object v2

    if-ne v2, p1, :cond_68

    if-nez p2, :cond_71

    :cond_f
    move v2, v1

    :goto_10
    iget v4, p0, Lcom/loc/cD;->blL:I

    if-lt v2, v4, :cond_b3

    iget v2, p0, Lcom/loc/cD;->blO:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/loc/cD;->blO:I

    const/4 v2, 0x0

    invoke-static {v3, v2}, Lcom/loc/O;->bwI(Lcom/loc/O;Lcom/loc/bV;)Lcom/loc/bV;

    invoke-static {v3}, Lcom/loc/O;->bwN(Lcom/loc/O;)Z

    move-result v2

    or-int/2addr v2, p2

    if-nez v2, :cond_e5

    iget-object v2, p0, Lcom/loc/cD;->blN:Ljava/util/LinkedHashMap;

    invoke-static {v3}, Lcom/loc/O;->bwM(Lcom/loc/O;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/loc/cD;->blM:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "REMOVE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/loc/O;->bwM(Lcom/loc/O;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_51
    :goto_51
    iget-object v2, p0, Lcom/loc/cD;->blM:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    iget-wide v2, p0, Lcom/loc/cD;->j:J

    iget-wide v4, p0, Lcom/loc/cD;->h:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_122

    :goto_5e
    if-nez v0, :cond_125

    invoke-direct {p0}, Lcom/loc/cD;->h()Z
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_6e

    move-result v0

    if-nez v0, :cond_125

    :goto_66
    monitor-exit p0

    return-void

    :cond_68
    :try_start_68
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_6e
    .catchall {:try_start_68 .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_71
    :try_start_71
    invoke-static {v3}, Lcom/loc/O;->bwN(Lcom/loc/O;)Z

    move-result v2

    if-nez v2, :cond_f

    move v2, v1

    :goto_78
    iget v4, p0, Lcom/loc/cD;->blL:I

    if-ge v2, v4, :cond_f

    invoke-static {p1}, Lcom/loc/bV;->bDQ(Lcom/loc/bV;)[Z

    move-result-object v4

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_91

    invoke-virtual {v3, v2}, Lcom/loc/O;->bwG(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_ae

    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    :cond_91
    invoke-virtual {p1}, Lcom/loc/bV;->b()V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Newly created entry didn\'t create value for index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ae
    invoke-virtual {p1}, Lcom/loc/bV;->b()V
    :try_end_b1
    .catchall {:try_start_71 .. :try_end_b1} :catchall_6e

    monitor-exit p0

    return-void

    :cond_b3
    :try_start_b3
    invoke-virtual {v3, v2}, Lcom/loc/O;->bwG(I)Ljava/io/File;

    move-result-object v4

    if-nez p2, :cond_c0

    invoke-static {v4}, Lcom/loc/cD;->a(Ljava/io/File;)V

    :cond_bc
    :goto_bc
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    :cond_c0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_bc

    invoke-virtual {v3, v2}, Lcom/loc/O;->a(I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {v3}, Lcom/loc/O;->bwL(Lcom/loc/O;)[J

    move-result-object v4

    aget-wide v6, v4, v2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v3}, Lcom/loc/O;->bwL(Lcom/loc/O;)[J

    move-result-object v8

    aput-wide v4, v8, v2

    iget-wide v8, p0, Lcom/loc/cD;->j:J

    sub-long v6, v8, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/loc/cD;->j:J

    goto :goto_bc

    :cond_e5
    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcom/loc/O;->bwH(Lcom/loc/O;Z)Z

    iget-object v2, p0, Lcom/loc/cD;->blM:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CLEAN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/loc/O;->bwM(Lcom/loc/O;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/loc/O;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_51

    iget-wide v4, p0, Lcom/loc/cD;->blQ:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/loc/cD;->blQ:J

    invoke-static {v3, v4, v5}, Lcom/loc/O;->bwP(Lcom/loc/O;J)J

    goto/16 :goto_51

    :cond_122
    move v0, v1

    goto/16 :goto_5e

    :cond_125
    iget-object v0, p0, Lcom/loc/cD;->blR:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/loc/cD;->blS:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_12c
    .catchall {:try_start_b3 .. :try_end_12c} :catchall_6e

    goto/16 :goto_66
.end method

.method private bHm(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/loc/cD;->blG:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic bHn(Lcom/loc/cD;)Ljava/io/Writer;
    .registers 2

    iget-object v0, p0, Lcom/loc/cD;->blM:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic bHo(Lcom/loc/cD;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/cD;->j()V

    return-void
.end method

.method static synthetic bHp(Lcom/loc/cD;)Z
    .registers 2

    invoke-direct {p0}, Lcom/loc/cD;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic bHq(Lcom/loc/cD;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/cD;->g()V

    return-void
.end method

.method static synthetic bHr(Lcom/loc/cD;I)I
    .registers 2

    iput p1, p0, Lcom/loc/cD;->blO:I

    return p1
.end method

.method static synthetic bHs(Lcom/loc/cD;)I
    .registers 2

    iget v0, p0, Lcom/loc/cD;->blL:I

    return v0
.end method

.method static synthetic bHt(Lcom/loc/cD;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/loc/cD;->blH:Ljava/io/File;

    return-object v0
.end method

.method static synthetic bHu(Lcom/loc/cD;Lcom/loc/bV;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/loc/cD;->bHk(Lcom/loc/bV;Z)V

    return-void
.end method

.method static synthetic d()Ljava/io/OutputStream;
    .registers 1

    sget-object v0, Lcom/loc/cD;->blT:Ljava/io/OutputStream;

    return-object v0
.end method

.method private e()V
    .registers 9

    const/4 v0, 0x0

    new-instance v1, Lcom/loc/cf;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/loc/cD;->blI:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/loc/G;->beb:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lcom/loc/cf;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :try_start_f
    invoke-virtual {v1}, Lcom/loc/cf;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/loc/cf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/loc/cf;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/loc/cf;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/loc/cf;->a()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_73

    :cond_2c
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected journal header: ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6e
    .catchall {:try_start_f .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception v0

    invoke-static {v1}, Lcom/loc/G;->bwy(Ljava/io/Closeable;)V

    throw v0

    :cond_73
    :try_start_73
    const-string/jumbo v7, "1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    iget v7, p0, Lcom/loc/cD;->g:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    iget v4, p0, Lcom/loc/cD;->blL:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const-string/jumbo v4, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9a
    .catchall {:try_start_73 .. :try_end_9a} :catchall_6e

    move-result v4

    if-eqz v4, :cond_2c

    :goto_9d
    :try_start_9d
    invoke-virtual {v1}, Lcom/loc/cf;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/loc/cD;->bHh(Ljava/lang/String;)V
    :try_end_a4
    .catch Ljava/io/EOFException; {:try_start_9d .. :try_end_a4} :catch_a7
    .catchall {:try_start_9d .. :try_end_a4} :catchall_6e

    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    :catch_a7
    move-exception v2

    :try_start_a8
    iget-object v2, p0, Lcom/loc/cD;->blN:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/loc/cD;->blO:I
    :try_end_b1
    .catchall {:try_start_a8 .. :try_end_b1} :catchall_6e

    invoke-static {v1}, Lcom/loc/G;->bwy(Ljava/io/Closeable;)V

    return-void
.end method

.method private f()V
    .registers 10

    const/4 v8, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/cD;->blJ:Ljava/io/File;

    invoke-static {v0}, Lcom/loc/cD;->a(Ljava/io/File;)V

    iget-object v0, p0, Lcom/loc/cD;->blN:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/O;

    invoke-static {v0}, Lcom/loc/O;->bwK(Lcom/loc/O;)Lcom/loc/bV;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-static {v0, v8}, Lcom/loc/O;->bwI(Lcom/loc/O;Lcom/loc/bV;)Lcom/loc/bV;

    move v1, v2

    :goto_28
    iget v4, p0, Lcom/loc/cD;->blL:I

    if-lt v1, v4, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    :cond_30
    move v1, v2

    :goto_31
    iget v4, p0, Lcom/loc/cD;->blL:I

    if-ge v1, v4, :cond_11

    iget-wide v4, p0, Lcom/loc/cD;->j:J

    invoke-static {v0}, Lcom/loc/O;->bwL(Lcom/loc/O;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/loc/cD;->j:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_43
    invoke-virtual {v0, v1}, Lcom/loc/O;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/cD;->a(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/loc/O;->bwG(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/cD;->a(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28
.end method

.method private declared-synchronized g()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/loc/cD;->blM:Ljava/io/Writer;

    if-nez v0, :cond_94

    :goto_5
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/loc/cD;->blJ:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/loc/G;->beb:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_9b

    :try_start_18
    const-string/jumbo v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lcom/loc/cD;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lcom/loc/cD;->blL:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/cD;->blN:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_61
    .catchall {:try_start_18 .. :try_end_61} :catchall_d4

    move-result v0

    if-nez v0, :cond_9e

    :try_start_64
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    iget-object v0, p0, Lcom/loc/cD;->blI:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_fc

    :goto_6f
    iget-object v0, p0, Lcom/loc/cD;->blJ:Ljava/io/File;

    iget-object v1, p0, Lcom/loc/cD;->blI:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/loc/cD;->bHi(Ljava/io/File;Ljava/io/File;Z)V

    iget-object v0, p0, Lcom/loc/cD;->blK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/loc/cD;->blI:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lcom/loc/G;->beb:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/loc/cD;->blM:Ljava/io/Writer;
    :try_end_92
    .catchall {:try_start_64 .. :try_end_92} :catchall_9b

    monitor-exit p0

    return-void

    :cond_94
    :try_start_94
    iget-object v0, p0, Lcom/loc/cD;->blM:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_99
    .catchall {:try_start_94 .. :try_end_99} :catchall_9b

    goto/16 :goto_5

    :catchall_9b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_9e
    :try_start_9e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/O;

    invoke-static {v0}, Lcom/loc/O;->bwK(Lcom/loc/O;)Lcom/loc/bV;

    move-result-object v3

    if-nez v3, :cond_d9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/loc/O;->bwM(Lcom/loc/O;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/loc/O;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_d3
    .catchall {:try_start_9e .. :try_end_d3} :catchall_d4

    goto :goto_5e

    :catchall_d4
    move-exception v0

    :try_start_d5
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw v0
    :try_end_d9
    .catchall {:try_start_d5 .. :try_end_d9} :catchall_9b

    :cond_d9
    :try_start_d9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/loc/O;->bwM(Lcom/loc/O;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_fa
    .catchall {:try_start_d9 .. :try_end_fa} :catchall_d4

    goto/16 :goto_5e

    :cond_fc
    :try_start_fc
    iget-object v0, p0, Lcom/loc/cD;->blI:Ljava/io/File;

    iget-object v1, p0, Lcom/loc/cD;->blK:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/loc/cD;->bHi(Ljava/io/File;Ljava/io/File;Z)V
    :try_end_104
    .catchall {:try_start_fc .. :try_end_104} :catchall_9b

    goto/16 :goto_6f
.end method

.method private h()Z
    .registers 3

    iget v0, p0, Lcom/loc/cD;->blO:I

    const/16 v1, 0x7d0

    if-ge v0, v1, :cond_8

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lcom/loc/cD;->blO:I

    iget-object v1, p0, Lcom/loc/cD;->blN:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_7
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Lcom/loc/cD;->blM:Ljava/io/Writer;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j()V
    .registers 5

    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/loc/cD;->j:J

    iget-wide v2, p0, Lcom/loc/cD;->h:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2e

    const/4 v0, 0x1

    :goto_9
    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/loc/cD;->blN:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/loc/cD;->bHl(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/loc/cD;->blP:Lcom/loc/bk;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/cD;->blP:Lcom/loc/bk;

    invoke-interface {v1, v0}, Lcom/loc/bk;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_9

    :cond_30
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/loc/A;
    .registers 11

    const/4 v2, 0x0

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, Lcom/loc/cD;->i()V

    invoke-direct {p0, p1}, Lcom/loc/cD;->bHm(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/cD;->blN:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/O;

    if-eqz v0, :cond_5f

    invoke-static {v0}, Lcom/loc/O;->bwN(Lcom/loc/O;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget v1, p0, Lcom/loc/cD;->blL:I

    new-array v6, v1, [Ljava/io/InputStream;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_8b

    move v1, v2

    :goto_1e
    :try_start_1e
    iget v3, p0, Lcom/loc/cD;->blL:I
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_20} :catch_8e
    .catchall {:try_start_1e .. :try_end_20} :catchall_8b

    if-lt v1, v3, :cond_63

    :try_start_22
    iget v1, p0, Lcom/loc/cD;->blO:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/loc/cD;->blO:I

    iget-object v1, p0, Lcom/loc/cD;->blM:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "READ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-direct {p0}, Lcom/loc/cD;->h()Z

    move-result v1

    if-nez v1, :cond_83

    :goto_4d
    new-instance v1, Lcom/loc/A;

    invoke-static {v0}, Lcom/loc/O;->bwO(Lcom/loc/O;)J

    move-result-wide v4

    invoke-static {v0}, Lcom/loc/O;->bwL(Lcom/loc/O;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/loc/A;-><init>(Lcom/loc/cD;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/loc/ax;)V
    :try_end_5d
    .catchall {:try_start_22 .. :try_end_5d} :catchall_8b

    monitor-exit p0

    return-object v1

    :cond_5f
    monitor-exit p0

    return-object v5

    :cond_61
    monitor-exit p0

    return-object v5

    :cond_63
    :try_start_63
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v0, v1}, Lcom/loc/O;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v3, v6, v1
    :try_end_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_6e} :catch_8e
    .catchall {:try_start_63 .. :try_end_6e} :catchall_8b

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_71
    :try_start_71
    aget-object v0, v6, v2

    invoke-static {v0}, Lcom/loc/G;->bwy(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    :goto_78
    iget v0, p0, Lcom/loc/cD;->blL:I
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_8b

    if-lt v2, v0, :cond_7e

    :goto_7c
    monitor-exit p0

    return-object v5

    :cond_7e
    :try_start_7e
    aget-object v0, v6, v2

    if-nez v0, :cond_71

    goto :goto_7c

    :cond_83
    iget-object v1, p0, Lcom/loc/cD;->blR:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/loc/cD;->blS:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_8a
    .catchall {:try_start_7e .. :try_end_8a} :catchall_8b

    goto :goto_4d

    :catchall_8b
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_8e
    move-exception v0

    goto :goto_78
.end method

.method public declared-synchronized a()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/loc/cD;->blM:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/loc/bV;
    .registers 4

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/loc/cD;->bHj(Ljava/lang/String;J)Lcom/loc/bV;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/loc/cD;->i()V

    invoke-direct {p0}, Lcom/loc/cD;->j()V

    iget-object v0, p0, Lcom/loc/cD;->blM:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bHf(Lcom/loc/bk;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/cD;->blP:Lcom/loc/bk;

    return-void
.end method

.method public declared-synchronized bHl(Ljava/lang/String;)Z
    .registers 8

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/loc/cD;->i()V

    invoke-direct {p0, p1}, Lcom/loc/cD;->bHm(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/cD;->blN:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/O;
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_91

    if-nez v0, :cond_14

    :cond_12
    monitor-exit p0

    return v1

    :cond_14
    :try_start_14
    invoke-static {v0}, Lcom/loc/O;->bwK(Lcom/loc/O;)Lcom/loc/bV;

    move-result-object v2

    if-nez v2, :cond_12

    :goto_1a
    iget v2, p0, Lcom/loc/cD;->blL:I

    if-lt v1, v2, :cond_51

    iget v0, p0, Lcom/loc/cD;->blO:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loc/cD;->blO:I

    iget-object v0, p0, Lcom/loc/cD;->blM:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "REMOVE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lcom/loc/cD;->blN:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/loc/cD;->h()Z
    :try_end_4b
    .catchall {:try_start_14 .. :try_end_4b} :catchall_91

    move-result v0

    if-nez v0, :cond_94

    :goto_4e
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_51
    :try_start_51
    invoke-virtual {v0, v1}, Lcom/loc/O;->a(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_71

    :cond_5b
    iget-wide v2, p0, Lcom/loc/cD;->j:J

    invoke-static {v0}, Lcom/loc/O;->bwL(Lcom/loc/O;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/loc/cD;->j:J

    invoke-static {v0}, Lcom/loc/O;->bwL(Lcom/loc/O;)[J

    move-result-object v2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_71
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_5b

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to delete "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_91
    .catchall {:try_start_51 .. :try_end_91} :catchall_91

    :catchall_91
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_94
    :try_start_94
    iget-object v0, p0, Lcom/loc/cD;->blR:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/loc/cD;->blS:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_9b
    .catchall {:try_start_94 .. :try_end_9b} :catchall_91

    goto :goto_4e
.end method

.method public c()V
    .registers 2

    invoke-virtual {p0}, Lcom/loc/cD;->close()V

    iget-object v0, p0, Lcom/loc/cD;->blH:Ljava/io/File;

    invoke-static {v0}, Lcom/loc/G;->a(Ljava/io/File;)V

    return-void
.end method

.method public declared-synchronized close()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/loc/cD;->blM:Ljava/io/Writer;

    if-eqz v0, :cond_27

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/loc/cD;->blN:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-direct {p0}, Lcom/loc/cD;->j()V

    iget-object v0, p0, Lcom/loc/cD;->blM:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cD;->blM:Ljava/io/Writer;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_3d

    monitor-exit p0

    return-void

    :cond_27
    monitor-exit p0

    return-void

    :cond_29
    :try_start_29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/O;

    invoke-static {v0}, Lcom/loc/O;->bwK(Lcom/loc/O;)Lcom/loc/bV;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-static {v0}, Lcom/loc/O;->bwK(Lcom/loc/O;)Lcom/loc/bV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/bV;->b()V
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_3d

    goto :goto_14

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
