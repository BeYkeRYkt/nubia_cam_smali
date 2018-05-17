.class public Lcom/loc/cg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected bFC(Landroid/location/Location;Lcom/loc/at;IBJZ)Lcom/loc/de;
    .registers 9

    invoke-static/range {p1 .. p7}, Lcom/loc/cw;->bGP(Landroid/location/Location;Lcom/loc/at;IBJZ)Lcom/loc/de;

    move-result-object v0

    return-object v0
.end method
