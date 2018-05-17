.class Lcom/loc/R;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;

.field bel:Landroid/location/Location;

.field final synthetic bem:Lcom/loc/cm;


# direct methods
.method protected constructor <init>(Lcom/loc/cm;)V
    .registers 3

    iput-object p1, p0, Lcom/loc/R;->bem:Lcom/loc/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/R;->a:Ljava/util/List;

    return-void
.end method
