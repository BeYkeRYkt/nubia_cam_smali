.class Lcn/nubia/bigAperture/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/bigAperture/e;


# instance fields
.field final synthetic bnQ:Lcn/nubia/bigAperture/g;


# direct methods
.method private constructor <init>(Lcn/nubia/bigAperture/g;)V
    .registers 2

    .prologue
    .line 958
    iput-object p1, p0, Lcn/nubia/bigAperture/i;->bnQ:Lcn/nubia/bigAperture/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/bigAperture/g;Lcn/nubia/bigAperture/i;)V
    .registers 3

    invoke-direct {p0, p1}, Lcn/nubia/bigAperture/i;-><init>(Lcn/nubia/bigAperture/g;)V

    return-void
.end method


# virtual methods
.method public bJh(Lcn/nubia/bigAperture/BigApertureTask;[B[BLcn/nubia/bigAperture/l;)V
    .registers 7

    .prologue
    .line 963
    const-string/jumbo v0, "BigApertureProcessTread"

    const-string/jumbo v1, "onDataSaved"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    iget-object v0, p0, Lcn/nubia/bigAperture/i;->bnQ:Lcn/nubia/bigAperture/g;

    invoke-static {v0}, Lcn/nubia/bigAperture/g;->bKf(Lcn/nubia/bigAperture/g;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 965
    :try_start_10
    iget-object v0, p0, Lcn/nubia/bigAperture/i;->bnQ:Lcn/nubia/bigAperture/g;

    invoke-static {v0, p1, p2, p3, p4}, Lcn/nubia/bigAperture/g;->bKj(Lcn/nubia/bigAperture/g;Lcn/nubia/bigAperture/BigApertureTask;[B[BLcn/nubia/bigAperture/l;)V

    .line 966
    iget-object v0, p0, Lcn/nubia/bigAperture/i;->bnQ:Lcn/nubia/bigAperture/g;

    invoke-static {v0}, Lcn/nubia/bigAperture/g;->bKg(Lcn/nubia/bigAperture/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_20

    monitor-exit v1

    .line 962
    return-void

    .line 964
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method
