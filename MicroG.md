Device is configured for MicroG.

To prevent MicroG from being installed remomve these lines from lineage_kiev.mk

1: Inherit some common PARTNER_GMS stuff.

2: $(call inherit-product, vendor/partner_gms/products/gms.mk)

Thanks go out to the MicroG team for all their hard work.
