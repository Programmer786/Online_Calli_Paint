"""empty message

Revision ID: 252a668a7130
Revises: b3b4c54864a6
Create Date: 2024-05-08 07:52:01.307743

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '252a668a7130'
down_revision = 'b3b4c54864a6'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    with op.batch_alter_table('product_download_verification', schema=None) as batch_op:
        batch_op.add_column(sa.Column('delivery_boy_id', sa.Integer(), nullable=True))
        batch_op.create_foreign_key(None, 'users', ['delivery_boy_id'], ['user_id'])

    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    with op.batch_alter_table('product_download_verification', schema=None) as batch_op:
        batch_op.drop_constraint(None, type_='foreignkey')
        batch_op.drop_column('delivery_boy_id')

    # ### end Alembic commands ###
