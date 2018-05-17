.class Lcom/loc/aW;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bgv:Lcom/loc/aj;

.field bgw:Landroid/location/Location;

.field final synthetic bgx:Lcom/loc/cm;


# direct methods
.method protected constructor <init>(Lcom/loc/cm;)V
    .registers 4

    iput-object p1, p0, Lcom/loc/aW;->bgx:Lcom/loc/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/loc/aj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/loc/aj;-><init>(Landroid/telephony/CellLocation;)V

    iput-object v0, p0, Lcom/loc/aW;->bgv:Lcom/loc/aj;

    return-void
.end method
