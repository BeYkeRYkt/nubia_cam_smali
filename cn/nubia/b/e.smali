.class Lcn/nubia/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private boX:Lcn/nubia/bigAperture/f;

.field private boY:[B

.field private boZ:Lcn/nubia/b/d;

.field private bpa:I

.field private bpb:Ljava/lang/String;

.field private bpc:Landroid/hardware/Camera$Size;

.field final synthetic bpd:Lcn/nubia/b/b;


# direct methods
.method public constructor <init>(Lcn/nubia/b/b;Lcn/nubia/b/d;I[BLjava/lang/String;)V
    .registers 7

    .prologue
    .line 373
    iput-object p1, p0, Lcn/nubia/b/e;->bpd:Lcn/nubia/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/b/e;->bpa:I

    .line 374
    iput-object p2, p0, Lcn/nubia/b/e;->boZ:Lcn/nubia/b/d;

    .line 375
    iput p3, p0, Lcn/nubia/b/e;->bpa:I

    .line 376
    iput-object p4, p0, Lcn/nubia/b/e;->boY:[B

    .line 377
    iput-object p5, p0, Lcn/nubia/b/e;->bpb:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public constructor <init>(Lcn/nubia/b/b;Lcn/nubia/b/d;I[BLjava/lang/String;Lcn/nubia/bigAperture/f;Landroid/hardware/Camera$Size;)V
    .registers 8

    .prologue
    .line 368
    invoke-direct/range {p0 .. p5}, Lcn/nubia/b/e;-><init>(Lcn/nubia/b/b;Lcn/nubia/b/d;I[BLjava/lang/String;)V

    .line 369
    iput-object p6, p0, Lcn/nubia/b/e;->boX:Lcn/nubia/bigAperture/f;

    .line 370
    iput-object p7, p0, Lcn/nubia/b/e;->bpc:Landroid/hardware/Camera$Size;

    .line 367
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 382
    iget-object v0, p0, Lcn/nubia/b/e;->bpd:Lcn/nubia/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "write file: type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/b/e;->bpa:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/b/e;->bpb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/b/b;->bLj(Lcn/nubia/b/b;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcn/nubia/b/e;->bpb:Ljava/lang/String;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcn/nubia/b/e;->boY:[B

    if-eqz v0, :cond_51

    .line 385
    iget-object v0, p0, Lcn/nubia/b/e;->boX:Lcn/nubia/bigAperture/f;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcn/nubia/b/e;->bpc:Landroid/hardware/Camera$Size;

    if-eqz v0, :cond_4a

    .line 386
    iget-object v0, p0, Lcn/nubia/b/e;->boY:[B

    iget-object v1, p0, Lcn/nubia/b/e;->bpc:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lcn/nubia/b/e;->bpc:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    iget-object v3, p0, Lcn/nubia/b/e;->boX:Lcn/nubia/bigAperture/f;

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/bigAperture/a;->bIO([BIILcn/nubia/bigAperture/f;)[B

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/b/e;->boY:[B

    .line 388
    :cond_4a
    iget-object v0, p0, Lcn/nubia/b/e;->bpb:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/b/e;->boY:[B

    invoke-static {v0, v1}, Lcom/android/common/l/c;->agh(Ljava/lang/String;[B)Z

    .line 390
    :cond_51
    iget-object v0, p0, Lcn/nubia/b/e;->boZ:Lcn/nubia/b/d;

    if-eqz v0, :cond_5c

    .line 391
    iget-object v0, p0, Lcn/nubia/b/e;->boZ:Lcn/nubia/b/d;

    iget v1, p0, Lcn/nubia/b/e;->bpa:I

    invoke-interface {v0, v1}, Lcn/nubia/b/d;->bLm(I)V

    .line 381
    :cond_5c
    return-void
.end method
