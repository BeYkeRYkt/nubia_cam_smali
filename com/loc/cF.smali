.class Lcom/loc/cF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/GpsStatus$NmeaListener;


# instance fields
.field final synthetic blW:Lcom/loc/at;


# direct methods
.method private constructor <init>(Lcom/loc/at;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/cF;->blW:Lcom/loc/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/at;Lcom/loc/bM;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/loc/cF;-><init>(Lcom/loc/at;)V

    return-void
.end method


# virtual methods
.method public onNmeaReceived(JLjava/lang/String;)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/loc/cF;->blW:Lcom/loc/at;

    invoke-static {v0, p1, p2}, Lcom/loc/at;->bzf(Lcom/loc/at;J)J

    iget-object v0, p0, Lcom/loc/cF;->blW:Lcom/loc/at;

    invoke-static {v0, p3}, Lcom/loc/at;->bzg(Lcom/loc/at;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "onNmeaReceived"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method
