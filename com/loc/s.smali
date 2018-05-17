.class public Lcom/loc/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static bdz:Lcom/loc/s;


# instance fields
.field protected bdA:Ljava/lang/Thread$UncaughtExceptionHandler;

.field protected bdB:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/s;->bdB:Z

    return-void
.end method

.method public static bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/loc/s;->bdz:Lcom/loc/s;

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    sget-object v0, Lcom/loc/s;->bdz:Lcom/loc/s;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/loc/s;->bwl(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method


# virtual methods
.method protected bwl(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method protected bwm(Landroid/content/Context;Lcom/loc/ag;Z)V
    .registers 4

    return-void
.end method

.method protected bwn(Lcom/loc/ag;Ljava/lang/String;)V
    .registers 3

    return-void
.end method
