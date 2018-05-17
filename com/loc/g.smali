.class Lcom/loc/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bdj:Lcom/loc/bQ;


# direct methods
.method constructor <init>(Lcom/loc/bQ;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/g;->bdj:Lcom/loc/bQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/g;->bdj:Lcom/loc/bQ;

    iget-object v0, v0, Lcom/loc/bQ;->bib:Lcom/loc/Z;

    iget-object v1, p0, Lcom/loc/g;->bdj:Lcom/loc/bQ;

    iget-object v1, v1, Lcom/loc/bQ;->bhZ:Lcom/amap/api/location/d;

    invoke-virtual {v0, v1}, Lcom/loc/Z;->bxA(Lcom/amap/api/location/d;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$GPSTask"

    const-string/jumbo v2, "run"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method
